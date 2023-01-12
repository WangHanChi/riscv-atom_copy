#include <gpio.h>
#include <spi.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>

#include "W25Q64.h"

int W25Q64_CS_PIN = 0; // Default

/////////////////////////////////////////////////////////////////
// Utility Functions (Non API)

/**
 * @brief Begin SPI transaction
 * 
 */
void _W25Q64_begin_transaction()
{
	gpio_write(W25Q64_CS_PIN, LOW);
	sleep(T_WAIT_AFTER_CS_LOW);
}


/**
 * @brief End SPI transaction
 * 
 */
void _W25Q64_end_transaction()
{
	sleep(T_WAIT_BEFORE_CS_HIGH);
	gpio_write(W25Q64_CS_PIN, HIGH);
}

/////////////////////////////////////////////////////////////////
// API Functions

/**
 * @brief Initialize communication with the flash chip
 */
void W25Q64_init()
{
	gpio_setmode(W25Q64_CS_PIN, OUTPUT);
	spi_init();
}


/**
 * @brief Write Enable
 */
void W25Q64_WriteEnable() 
{
	_W25Q64_begin_transaction();
	spi_transfer(CMD_WRITE_ENABLE);
	_W25Q64_end_transaction();
}


/**
 * @brief Write Disable
 */
void W25Q64_WriteDisable() 
{
	_W25Q64_begin_transaction();
	spi_transfer(CMD_WRITE_DISABLE);
	_W25Q64_end_transaction();
}


/**
 * @brief Read status register 1
 * 
 * @return uint8_t status register 1
 */
uint8_t W25Q64_readStatusReg1()
{
	_W25Q64_begin_transaction();
	spi_transfer(CMD_READ_STATUS_R1);
	uint8_t c = spi_transfer(0x00000000);
	_W25Q64_end_transaction();
	return c;
}


/**
 * @brief Read status register 2
 * 
 * @return uint8_t status register 2
 */
uint8_t W25Q64_readStatusReg2()
{
	_W25Q64_begin_transaction();
	spi_transfer(CMD_READ_STATUS_R2);
	uint8_t c = spi_transfer(0x00000000);
	_W25Q64_end_transaction();
	return c;
}


/**
 * @brief Check if flash is busy
 * 
 * @return true if busy
 * @return false otherwise
 */
bool W25Q64_isBusy()
{
	return (W25Q64_readStatusReg1() & SR1_BUSY_MASK) ? true : false;
}


/**
 * @brief Program a memory page from 1 byte to 256 bytes(a page) of data.
 * 
 * @param sect_no sector number
 * @param inaddr offset
 * @param buf byte buffer
 * @param n size of buffer
 * @param flagwait set this true if need to wait for completion of operation on chip.
 * @return uint16_t 
 */
uint16_t W25Q64_pageProgram(uint16_t sect_no, uint16_t inaddr, uint8_t * buf, uint16_t n, bool flagwait)
{
	if((n > 256) || (n < 1)) return 0;

	// address = sect_no + offset
	uint32_t addr = sect_no;
	addr <<= 12;
	addr += inaddr;

	W25Q64_WriteEnable();

	_W25Q64_begin_transaction();
	
	// Shift out Command
	spi_transfer(CMD_PAGE_PROGRAM);

	// Shift out Address
	spi_transfer(addr >> 16);
	spi_transfer(addr >> 8);
	spi_transfer(addr);

	// Shift out data bytes
	uint8_t rc;
	for(int i=0; i<n; i++)
	{
		rc = spi_transfer(buf[i]);
	}
	_W25Q64_end_transaction();

	// Wait till operation completes
	while(flagwait && W25Q64_isBusy())
		sleep(10);
	return rc;
}


/**
 * @brief Sets all memory withing a sector(4k Bytes) to erased state (0xFF).
 * 
 * @param sect_no sector number
 * @param flagwait set this to true if needed to wait for the completion of operation on the chip.
 */
void W25Q64_eraseSector(uint16_t sect_no, bool flagwait)
{
	uint32_t addr = sect_no;
	addr <<= 12;
	
	W25Q64_WriteEnable();

	_W25Q64_begin_transaction();

	// Shift out Command
	spi_transfer(CMD_PAGE_PROGRAM);

	// Shift out Address
	spi_transfer(addr >> 16);
	spi_transfer(addr >> 8);
	spi_transfer(addr);

	_W25Q64_end_transaction();

	// Wait till operation completes
	while(flagwait && W25Q64_isBusy())
		sleep(10);
}


/**
 * @brief erase a 32kB block of data
 * 
 * @param blk_no bock number
 * @param flagwait set this to true if needed to wait for the completion of operation on the chip.
 */
bool W25Q64_erase32Block(uint16_t blk_no, bool flagwait)
{
	uint32_t addr = blk_no;
	addr <<= 16;
	
	W25Q64_WriteEnable();


	_W25Q64_begin_transaction();

	// Shift out Command
	spi_transfer(CMD_BLOCK_ERASE32KB);

	// Shift out Address
	spi_transfer(addr >> 16);
	spi_transfer(addr >> 8);
	spi_transfer(addr);

	_W25Q64_end_transaction();

	// Wait till operation completes
	while(flagwait && W25Q64_isBusy())
		sleep(10);
	return true;
}


/**
 * @brief erase a 64kB block of data
 * 
 * @param blk_no bock number
 * @param flagwait set this to true if needed to wait for the completion of operation on the chip.
 */
bool W25Q64_erase64Block(uint16_t blk_no, bool flagwait)
{
	uint32_t addr = blk_no;
	addr <<= 16;
	
	W25Q64_WriteEnable();


	_W25Q64_begin_transaction();

	// Shift out Command
	spi_transfer(CMD_BLOCK_ERASE64KB);

	// Shift out Address
	spi_transfer(addr >> 16);
	spi_transfer(addr >> 8);
	spi_transfer(addr);

	_W25Q64_end_transaction();

	// Wait till operation completes
	while(flagwait && W25Q64_isBusy())
		sleep(10);
	return true;
}


/**
 * @brief Erase all data
 *
 */
bool  W25Q64_eraseAll(bool flagwait)
{
	W25Q64_WriteEnable();

	_W25Q64_begin_transaction();
	spi_transfer(CMD_CHIP_ERASE);
	_W25Q64_end_transaction();

	// Wait till operation completes
	while(flagwait && W25Q64_isBusy())
		sleep(10);
	return true;
}


/**
 * @brief Read bytes from flash chip
 * 
 * @param buf buffer to store bytes
 * @param len bytes to read
 * @param addr address to start reading from
 * @return char* buffer to store bytes
 */
uint8_t *W25Q64_read(uint8_t *buf, uint32_t len, uint32_t addr)
{
	uint8_t *ptr = buf;
	_W25Q64_begin_transaction();
	spi_transfer(CMD_READ_DATA);
	spi_transfer(addr >> 16);
	spi_transfer(addr >> 8);
	spi_transfer(addr);
	
	for(uint32_t i=0; i<len; i++)
	{
		*ptr = spi_transfer(0x000000);
		ptr++;
	}
	_W25Q64_end_transaction();
	return buf;
}

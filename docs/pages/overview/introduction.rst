.. image:: ../../diagrams/rvatom-header.drawio.png

|

.. image:: https://img.shields.io/badge/License-MIT-blue.svg
   :target: https://github.com/saurabhsingh99100/riscv-atom/blob/main/LICENSE
   :alt: License

|


Introduction
##############

**RISC-V Atom** is an open-source soft-core processor platform targeted for FPGAs. It is based on the open-source loyality-free RISC-V ISA. It is complete hardware prototyping and software development environment based around the **Atom** CPU. RISC-V Atom is a customizable processor platform which is easy to learn, use and tinker even for a begineer. It also provides a wide variety of software examples for testing, a rich documentation and a comprehensive guide for getting stated.

Key Highlights 
***************

#. Based around **Atom**: A 32-bit 2-stage pipelined RISC-V CPU.
#. Customizable, Easy to learn and tinker.
#. Provides multiple SoCs and common peripherals.
#. RISC-V GCC is used as default toolchain (prebuilt toolchains are also provided)
#. Provides a feature rich simulation software **AtomSim**.
#. A rich documentation & getting started guide.
#. An array of software examples to run & test.
#. Features a python based processor verification framework called *SCAR*.
#. A rich software framework with a C library **libcatom** for all SoC peripherals.
#. Open-Sources under MIT License.

.. note::
   Although significant efforts have been and will be made towards optimizing the RTL for LUT consumption & timing on FPGAs, however, the **codebase is not recommended for any production use as of now**.

To get started, Check out the getting started guide :doc:`/pages/getting_started/prerequisites`.

# Install

Contents:

- [Prerequisites](#prerequisites)
- [Build the ROM](#build-the-rom)
    - [Matching the base ROM](#matching-the-base-rom)
    - [Building with non-matching code](#building-with-non-matching-code)

## Prerequisites

1. Use one of these platforms:
    - Windows (recommended)
    - macOS
    - Linux
2. Install the following:
    - Python 3.11+ and pip
    - GCC 9+
    - Ninja
    - Wine (macOS only)
3. Install the Python dependencies:
```shell
python -m pip install -r tools/requirements.txt
```
4. Install pre-commit hooks:
```shell
pre-commit install
```
5. Run the Ninja configure script:
```shell
python tools/configure.py <eur|usa>
```
6. Put one or more base ROMs in the [`/extract/`](/extract/README.md) directory of this repository.

Now you can run `ninja` to build a ROM for the chosen version.

> [!NOTE]
> For Linux users: Wibo is used by default. If you want to use Wine instead, run `configure.py` with `-w <path/to/wine>`.

### Matching the base ROM

**This is optional!** You only need to follow these steps if you want a matching ROM.

First, [extract the ARM7 BIOS from your DS device](https://wiki.ds-homebrew.com/ds-index/ds-bios-firmware-dump). Put the
ARM7 BIOS in the root directory of this repository, and verify that your dumped BIOS matches one of the following:

| File name       | SHA1                                       |
| --------------- | ------------------------------------------ |
| `arm7_bios.bin` | `6ee830c7f552c5bf194c20a2c13d5bb44bdb5c03` |
| `arm7_bios.bin` | `24f67bdea115a2c847c8813a262502ee1607b7df` |

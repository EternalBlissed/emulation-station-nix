# Nix-flake Dev Environment for Emulating

This repository contains a Nix-flake development environment for emulating various game consoles and computers.

## Description

A Nix-flake dev environment for emulating games.

## Setup

To use this development environment, ensure you have Nix installed. Then, run the following commands:

`nix develop`

This will drop you into a shell with all the necessary emulators installed.

## Available Emulators

Below is a list of the emulators available in this environment:

- **VICE**: Commodore 64, Commodore Plus/4
- **SimH**: Multiple 70s, 80s Computers
- **MAME**: 
  - Welback - Mega Duck
  - VTech – V.Smile
  - VTech – CreatiVision
  - VM Labs - NUON
  - Takeda Archive
  - Tiger – Game.com
  - Texas Instruments - TI-99/4A
  - TeleNova - Compis?
  - Seta - Aleck64
  - Sega – Beena?
  - Sanyo - MBC-550 (Flux)
  - RCA - Studio II
  - Game & Watch
  - Nichibutsu - My Vision
  - Luxor - ABC 800
  - Konami – Picno
  - Interton - VC 4000
  - Hartung - Game Master
  - Funtech - Super Acan
  - Fujitsu - FM Towns
  - Fairchild - Channel F
  - Epoch - Game Pocket Computer
  - Epoch - Super Cassette Vision
  - Entex - Adventure Vision
  - Emerson - Arcadia 2001
  - Casio PV-1000
  - Bit Corporation – Gamate
  - Bally – Astrocade
  - Bandai - Design Master Denshi Mangajuku
  - Bandai - Gundam RX-78
  - Apricot PC XI
  - APF Imagination Machine
  - APF MP-1000
  - Apple - II (A2R)
  - Apple - II (WOZ)
  - Apple - II (Waveform)
  - Apple - II Plus (Flux)
  - Apple - II Plus (WOZ)
  - Apple - IIGS (A2R)
  - Apple - IIGS (WOZ)
  - Apple - IIe (A2R)
  - Apple - IIe (Kryoflux)
  - Apple - IIe (WOZ)
  - Atari 7800
- **RPCEmu**: Acorn – Archimedes, Acorn - Risc PC (Flux), Acorn - Atom (Tapes) (Bitstream), Acorn RISC OS - Flash Media (Misc)
- **Caprice32**: Amstrad - CPC (Flux), Amstrad - CPC (Misc)
- **QEMU Full**: Generic Virtualization, Apple - Macintosh (A2R), Apple - Macintosh (BETA) (Bitstreams), Apple - Macintosh (BETA) (FluxDumps), Apple - Macintosh (DC42), Apple - Macintosh (KryoFlux), Apple - Macintosh (Uncategorized), Apple - Macintosh (WOZ), Apple-Bandai - Pippin
- **Stella**: Atari 2600
- **Atari800**: Atari 5200
- **AtariPP**: Atari - 8-bit Family, Atari - 8-bit Family (Kryoflux)
- **Libretro VirtualJaguar**: Atari Jaguar
- **Libretro O2EM**: Magnavox - Odyssey 2, Philips – Videopac+
- **Libretro FreeIntv**: Mattel – Intellivision
- **OpenMSX**: Microsoft – MSX, Microsoft – MSX 2
- **RetroArch Bare**: For libretro cores
- **Mednafen**: 
  - Nintendo - Virtual Boy
  - NEC - PC Engine – TurboGrafx-16
  - NEC - PC Engine SuperGrafx
  - Casio - Loopy
  - Atari Lynx
  - Bandai – WonderSwan
  - Bandai – WonderSwan Color
  - Benesse - Pocket Challenge V2
  - Benesse - Pocket Challenge W
- **Hatari**: Atari ST, STE, TT, and Falcon
- **Higan**: ColecoVision
- **FS-UAE**: Commodore Amiga
- **NP2KAI**: NEC – PC-98
- **FCEUX**: Nintendo - Family BASIC, Nintendo - Family Computer Disk System, Nintendo - Family Computer, Nintendo - Nintendo Entertainment System
- **mGBA**: Nintendo - Game Boy, Nintendo - Game Boy Advance, Game Boy Color
- **Mupen64Plus**: Nintendo 64, iQue
- **melonDS**: Nintendo DS, Nintendo DSi
- **bsnes-hd**: Nintendo – Satellaview, Nintendo - Sufami Turbo
- **Snes9x**: Nintendo - Super Nintendo Entertainment System
- **Kega Fusion**: Sega – 32X, Sega - Game Gear, Sega - Master System - Mark III, Sega - Mega Drive – Genesis, Sega – SG-1000
- **Flycast**: Sega - Dreamcast
- **Fuse**: Sinclair - ZX Spectrum +3
- **Vecx**: GCE – Vectrex (custom-built from source)

## Shell Configuration

When you enter the development shell, you will see the prompt `[Emulation-Station]>`. You can list all emulators by typing `list`.

To list the available emulators, type:

`list`

This will output the available emulators in the shell.

## License

This project is licensed under the MIT License.


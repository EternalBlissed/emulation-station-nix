# Project Overview

| Key         | Value                                      |
|-------------|--------------------------------------------|
| Description | A Nix-flake dev environment for emulating games |
| Inputs      | nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable" |
| Outputs     | Development shells with various emulators  |
| System      | x86_64-linux                               |

# Emulators Table

```markdown
| Emulator   | Console(s)                                                                                                                                             |
|------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| vice       | Commodore 64, Commodore – Plus-4                                                                                                                        |
| simh       | Multiple 70s, 80s Computers                                                                                                                             |
| mame       | Welback - Mega Duck, VTech – V.Smile, VTech – CreatiVision, VM Labs - NUON, Takeda Archive, Tiger – Game.com, Texas Instruments - TI-99-4A, TeleNova - Compis?, Seta - Aleck64, Sega – Beena?, Sanyo - MBC-550 (Flux), RCA - Studio II Game & Watch, Nichibutsu - My Vision, Luxor - ABC 800, Konami – Picno, Interton - VC 4000, Hartung - Game Master, Funtech - Super Acan, Fujitsu - FM Towns, Fairchild - Channel F, Epoch - Game Pocket Computer, Epoch - Super Cassette Vision, Entex - Adventure Vision, Emerson - Arcadia 2001, Casio PV-1000, Bit Corporation – Gamate, Bally – Astrocade, Bandai - Design Master Denshi Mangajuku, Bandai - Gundam RX-78, Apricot PC XI, APF Imagination Machine, APF MP-1000, Apple - II (A2R), Apple - II (WOZ), Apple - II (Waveform), Apple - II Plus (Flux), Apple - II Plus (WOZ), Apple - IIGS (A2R), Apple - IIGS (WOZ), Apple - IIe (A2R), Apple - IIe (Kryoflux), Apple - IIe (WOZ), Atari 7800 |
| rpcemu     | Acorn – Archimedes, Acorn - Risc PC (Flux), Acorn - Atom (Tapes) (Bitstream), Acorn RISC OS - Flash Media (Misc)                                         |
| caprice32  | Amstrad - CPC (Flux), Amstrad - CPC (Misc)                                                                                                              |
| qemu_full  | Generic Virtualization, Apple - Macintosh (A2R), Apple - Macintosh (BETA) (Bitstreams), Apple - Macintosh (BETA) (FluxDumps), Apple - Macintosh (DC42), Apple - Macintosh (KryoFlux), Apple - Macintosh (Uncategorized), Apple - Macintosh (WOZ), Apple-Bandai - Pippin                                                                                      |
| stella     | Atari 2600                                                                                                                                              |
| atari800   | Atari 5200                                                                                                                                              |
| ataripp    | Atari - 8-bit Family, Atari - 8-bit Family (Kryoflux) (Also See Atari800)                                                                               |
| libretro.virtualjaguar | Atari Jaguar                                                                                                                              |
| libretro.o2em | Magnavox - Odyssey 2, Philips – Videopac+                                                                                                          |
| libretro.freeintv | Mattel – Intellivision                                                                                                                          |
| openmsx    | Microsoft – MSX, Microsoft – MSX 2                                                                                                                      |
| retroarchBare | For libretro cores                                                                                                                                  |
| mednafen   | Nintendo - Virtual Boy, NEC - PC Engine – TurboGrafx-16, NEC - PC Engine SuperGrafx, Casio - Loopy, Atari Lynx, Bandai – WonderSwan, Bandai – WonderSwan Color, Benesse - Pocket Challenge V2, Benesse - Pocket Challenge W                                                                                          |
| hatari     | Atari ST, STE, TT, and Falcon                                                                                                                           |
| higan      | ColecoVision                                                                                                                                            |
| fsuae      | Commodore Amiga                                                                                                                                         |
| np2kai     | NEC – PC-98                                                                                                                                             |
| fceux      | Nintendo - Family BASIC, Nintendo - Family Computer Disk System, Nintendo - Family Computer, Nintendo - Nintendo Entertainment System                    |
| mgba       | Nintendo - Game Boy, Nintendo - Game Boy Advance, Game Boy Color                                                                                        |
| mupen64plus| Nintendo 64, iQue                                                                                                                                       |
| melonDS    | Nintendo DS, Nintendo DSi                                                                                                                               |
| bsnes-hd   | Nintendo – Satellaview, Nintendo - Sufami Turbo                                                                                                         |
| snes9x     | Nintendo - Super Nintendo Entertainment System                                                                                                          |
| kega-fusion| Sega – 32X, Sega - Game Gear, Sega - Master System - Mark III, Sega - Mega Drive – Genesis, Sega – SG-1000                                              |
| flycast    | Sega - Dreamcast                                                                                                                                        |
| fuse-emulator | Sinclair - ZX Spectrum +3                                                                                                                          |


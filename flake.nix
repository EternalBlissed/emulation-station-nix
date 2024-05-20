{
  description = "A Nix-flake dev environment for emulating games";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: let
    # system should match the system you are running on
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      # create an environment with vice
      packages = with pkgs; [
        vice # Commodore 64, Commodore – Plus-4, 
        simh # Multiple 70s, 80s Computers
        mame # Welback - Mega Duck, VTech – V.Smile, VTech – CreatiVision, VM Labs - NUON, Takeda Archive, Tiger – Game.com, Texas Instruments - TI-99-4A, TeleNova - Compis?, Seta - Aleck64, Sega – Beena?, Sanyo - MBC-550 (Flux), RCA - Studio II Game & Watch,  Nichibutsu - My Vision, Luxor - ABC 800, Konami – Picno, Interton - VC 4000, Hartung - Game Master, Funtech - Super Acan, Fujitsu - FM Towns. Fairchild - Channel F, Epoch - Game Pocket Computer, Epoch - Super Cassette Vision, Entex - Adventure Vision, Emerson - Arcadia 2001, Casio PV-1000, Bit Corporation – Gamate, Bally – Astrocade, Bandai - Design Master Denshi Mangajuku, Bandai - Gundam RX-78,  Apricot PC XI, APF Imagination Machine, APF MP-1000, Apple - II (A2R), Apple - II (WOZ), Apple - II (Waveform), Apple - II Plus (Flux), Apple - II Plus (WOZ), Apple - IIGS (A2R), Apple - IIGS (WOZ), Apple - IIe (A2R), Apple - IIe (Kryoflux), Apple - IIe (WOZ), Atari 7800
        rpcemu # Acorn – Archimedes, Acorn - Risc PC (Flux), Acorn - Atom (Tapes) (Bitstream), Acorn RISC OS - Flash Media (Misc)
        caprice32 # Amstrad - CPC (Flux), Amstrad - CPC (Misc)
        qemu_full # Generic Virtualization, Apple - Macintosh (A2R), Apple - Macintosh (BETA) (Bitstreams), Apple - Macintosh (BETA) (FluxDumps), Apple - Macintosh (DC42), Apple - Macintosh (KryoFlux), Apple - Macintosh (Uncategorized), Apple - Macintosh (WOZ), Apple-Bandai - Pippin
        stella # Atari 2600
        atari800 # Atari 5200
        ataripp # Atari - 8-bit Family, Atari - 8-bit Family (Kryoflux) (Also See Atari800)
        libretro.virtualjaguar # Atari Jaguar, This is the only emulator I can find 
        libretro.o2em # Magnavox - Odyssey 2, Philips – Videopac+
        libretro.freeintv # Mattel – Intellivision
        openmsx # Microsoft – MSX, Microsoft – MSX 2
        dosbox # Microsoft - MS-DOS 5.0 / FreeDOS 
        retroarchBare # For libretro cores
        mednafen # Nintendo - Virtual Boy, NEC - PC Engine – TurboGrafx-16, NEC - PC Engine SuperGrafx, Casio - Loopy, Atari Lynx, Bandai – WonderSwan, Bandai – WonderSwan Color, Benesse - Pocket Challenge V2, Benesse - Pocket Challenge W
        hatari # Atari ST, STE, TT, and Falcon
        higan # ColecoVision
        fsuae # Commodore Amiga
        np2kai # NEC – PC-98
        fceux # Nintendo - Family BASIC, Nintendo - Family Computer Disk System, Nintendo - Family Computer, Nintendo - Nintendo Entertainment System 
        mgba # Nintendo - Game Boy, Nintendo - Game Boy Advance, Game Boy Color
        mupen64plus # Nintendo 64, iQue
        melonDS # Nintendo DS, Nintendo DSi
        bsnes-hd # Nintendo – Satellaview, Nintendo - Sufami Turbo
        snes9x # Nintendo - Super Nintendo Entertainment System
        kega-fusion # Sega – 32X, Sega - Game Gear, Sega - Master System - Mark III, Sega - Mega Drive – Genesis, Sega – SG-1000
        flycast # Sega - Dreamcast
        fuse-emulator # Sinclair - ZX Spectrum +3

        (pkgs.stdenv.mkDerivation rec {
          pname = "vecx";
          version = "1.1.r0.gbe44a67";

          src = pkgs.fetchFromGitHub {
            owner = "jhawthorn";
            repo = "vecx";
            rev = "be44a67";
            sha256 = "sha256-p7z+EXq+HPboujU+yl+RiHanHAW9eSIepbrXacl/yes=";
          };

          nativeBuildInputs = [ pkgs.pkg-config ];
          buildInputs = [ pkgs.SDL pkgs.SDL_gfx pkgs.SDL_image ];

          meta = with pkgs.lib; {
            description = "SDL-based Vectrex console emulator";
            license = licenses.gpl2;
            platforms = platforms.linux;
            homepage = "https://github.com/jhawthorn/vecx";
            maintainers = with maintainers; [ "prg <prg@xannode.com>" ];
          };

          prePatch = ''
            sed -i 's/-O3/-fgnu89-inline -O3/g' Makefile
            sed -i 's|rom.dat|${placeholder "out"}/share/vecx/rom.dat|' osint.c
          '';

          configurePhase = ''
            echo "Skipping configure phase"
          '';

          buildPhase = ''
            make
          '';

          installPhase = ''
            mkdir -p $out/bin
            install -m755 vecx $out/bin/vecx
            mkdir -p $out/share/vecx
            install -m644 rom.dat $out/share/vecx/rom.dat
          '';
        })
      ];

      shellHook = ''
        PS1="[Emulation-Station]> "
        echo "Type list to list all emulators or see the README for a more detailed explanation."

        list-emulators() {
          echo "Available emulators:"
          echo " - VICE (Commodore Family)" 
          echo " - SimH (History Simulator)"
          echo " - MAME (Multiple Arcade Machine Emulator)"
          echo " - RPCEmu (Acorn RISC OS)"
          echo " - Caprice32 (Amstrad CPC)"
          echo " - QEMU Full (Generic Virtualization, Apple Macintosh)"
          echo " - Stella (Atari 2600)"
          echo " - Atari800 (Atari 5200)"
          echo " - AtariPP (Atari 8-bit Family)"
          echo " - Apple I: https://stid.me/"
          echo " - Arduboy: https://felipemanga.github.io/ProjectABE/"
          echo " - RetroArch Bare + VirtualJaguar Core"
          echo " - Mednafen (Atari Lynx)"
          echo " - Hatari (Atari ST, STE, TT, and Falcon)"
          echo " - Higan (ColecoVision)"
          echo " - FS-UAE (Amiga)"
          echo " - Vecx (GCE – Vectrex)"
          echo " - Caprice32 (Amstrad CPC)"
          echo " - OpenMSX (MSX, MSX 2)"
          echo " - dosbox ( MS-DOS 5)"
          echo " - NP2KAI (NEC PC-98)"
          echo " - FCEUX (NES, Family Computer)"
          echo " - mGBA (Game Boy, Game Boy Color, Game Boy Advance)"
          echo " - Mupen64Plus (Nintendo 64, iQue)"
          echo " - melonDS (Nintendo DS, DSi)"
          echo " - bsnes-hd (Satellaview, Sufami Turbo)"
          echo " - Snes9x (Super Nintendo)"
          echo " - Kega Fusion (Sega consoles)"
          echo " - Flycast (Dreamcast)"
          echo " - Fuse (ZX Spectrum)"
        }

        alias list="list-emulators"

      '';
    };
  };
}

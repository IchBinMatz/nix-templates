{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShell rec {
    nativeBuildInputs = [
      pkg-config
    ];
    buildInputs = [
      # (rust-bin.fromRustupToolchainFile ./rust-toolchain.toml)
      rust-bin.stable.latest.default
      rust-analyzer

      udev
      alsa-lib
      vulkan-loader
      xorg.libX11
      xorg.libXcursor
      xorg.libXi
      xorg.libXrandr # To use the x11 feature
      libxkbcommon
      wayland # To use the wayland feature
      gtk4
      cairo

      gnome-builder
    ];
    LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
  }

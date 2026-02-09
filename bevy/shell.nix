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
      xorg
      libx11
      libxcursor
      libxi
      libxrandr
      libxkbcommon
      wayland # To use the wayland feature
      gtk4
      cairo

      gnome-builder
    ];
    LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
  }

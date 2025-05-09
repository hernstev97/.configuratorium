{pkgs, ...}: let
  nix-gaming = import (builtins.fetchTarball "https://github.com/fufexan/nix-gaming/archive/master.tar.gz");
in {
  environment.systemPackages = with pkgs; [
    ryujinx
    dolphin-emu
    simple64
    zsnes2
    mgba

    wine64
    winetricks
    lutris

    dxvk

    xboxdrv

    nix-gaming.packages.${pkgs.hostPlatform.system}.star-citizen
    nix-gaming.packages.${pkgs.hostPlatform.system}.wine-ge
  ];

  nix.settings = {
    substituters = ["https://nix-gaming.cachix.org"];
    trusted-public-keys = ["nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="];
  };
}

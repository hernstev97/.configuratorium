{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ryujinx
    dolphin-emu
    simple64
    zsnes2
    mgba

    wine
    wine64
    winetricks
    lutris

    dxvk

    xboxdrv
  ];
}

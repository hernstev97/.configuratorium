{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nano
    sherlock
    atuin
    git
    git-lfs
    btop
    ffmpeg_6
    neofetch
    freshfetch
    fastfetch
    neovim
    eza
    unzip
    cabextract
    gh
  ];
}

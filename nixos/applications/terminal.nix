{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    oh-my-posh
    nano
    sherlock
    git
    git-lfs
    btop
    ffmpeg_6
    freshfetch
    fastfetch
    neovim
    eza
    unzip
    cabextract
    gh
    fzf
    bat
    fd
    tldr
    zoxide
  ];
}

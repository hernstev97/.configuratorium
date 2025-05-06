{ pkgs, ... }:
{
    imports = [
        ./gaming.nix
        ./terminal.nix
        ./misc.nix
    ];

    environment.systemPackages = with pkgs; [
        kitty
        gitkraken
        proton-pass
        protonmail-desktop
        vesktop
        reaper
        gimp
        gparted
        whatsapp-for-linux
        youtube-music
        obs-studio
        vscode
        cavalier

        python39
    ];

    programs.firefox.enable = true;
}  
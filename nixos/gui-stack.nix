{ pkgs, ... }:
{
    # desktop environment
    services.desktopManager.plasma6.enable = true;
    services.displayManager.sddm.enable = true;
    services.xserver.enable = true;
    # services.displayManager.sddm.wayland.enable = true;

    environment.systemPackages = with pkgs; [
        waybar
        fuzzel
        nerdfonts
    ];
}  
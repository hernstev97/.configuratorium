{ config, pkgs, ... }:
{
    # networking config
    # add here

    # configure bootloader device
    boot.loader.grub.device = "/dev/sda";

    # time zone
    time.timeZone = "Europe/Amsterdam";

    # keyboard layout
    services.xserver.xkb.layout = "de";

    # bluetooth
    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;
    services.blueman.enable = true;

    # --- drivers ---
    # nvidia
    hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
    hardware.nvidia.open = true;
    services.xserver.videoDrivers = [ "nvidia" ]; 

    boot.initrd.kernelModules = [ "nvidia_drm" "nvidia_modeset" ];
}  
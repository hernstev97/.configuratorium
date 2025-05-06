{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        python39
    ];
}  
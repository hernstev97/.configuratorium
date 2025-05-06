{ pkgs, ... }:
{
    users.users.hatedbyghosts = {
        isNormalUser = true;
        description = "hatedbyghosts";
        extraGroups = ["wheel"];
        shell = pkgs.bash;
        home = "/home/hatedbyghosts";
    };
}
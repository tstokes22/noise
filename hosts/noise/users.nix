{ pkgs, ... }:
{
  users = {
    users.taylor = {
      isNormalUser = true;
      description = "taylor";
      home = "/home/taylor";
      extraGroups = [
        "networkmanager"
        "wheel"
        "docker"
      ];
      shell = pkgs.zsh;
      packages = with pkgs; [ ];
    };
  };
}

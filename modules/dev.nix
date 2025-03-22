{ pkgs, ... }:
{
  environment.variables = {
    GOPATH = "/home/taylor/.local/share/go";
    GOBIN = "/home/taylor/.local/share/go/bin";
  };

  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  programs.adb.enable = true;
  users.users.taylor.extraGroups = [ "adbusers" ];
  services.udev.packages = [ pkgs.android-udev-rules ];
}

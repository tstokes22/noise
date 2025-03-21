{ pkgs, ... }:
{
  imports = [
    ./dunst.nix
    ./foot.nix
    ./fuzzel.nix
    ./gammastep.nix
    ./gtk.nix
    ./hyprland
    ./waybar
  ];

  services = {
    network-manager-applet.enable = true;
  };

  home.packages = with pkgs; [
    jetbrains-toolbox
    obsidian
    xournalpp
    libnotify
    grim
    slurp
    wl-clipboard
    pavucontrol
    pulseaudio
    pamixer
    playerctl
    brightnessctl
  ];
}

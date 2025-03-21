{ pkgs, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-vaapi
    ];
  };

  home.packages = with pkgs; [
    (discord.override {
      withVencord = true;
    })
    xournalpp
    vesktop
    obsidian
    calibre
    koreader
    kdePackages.kdenlive
    audacity
    reaper
    anki
    gimp
    qbittorrent
    vlc
    libreoffice
  ];
}

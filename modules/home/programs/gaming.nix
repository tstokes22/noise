{ pkgs, ... }:
{
  home.packages = with pkgs; [
    moonlight-qt
    prismlauncher
    (pkgs.callPackage ./extra/olympus/package.nix { })
    protonplus
    lutris
    (retroarch.withCores (
      libretro: with libretro; [
        vba-m
        citra
        desmume
      ]
    ))
  ];
}

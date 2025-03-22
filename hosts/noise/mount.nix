{
  # Arch Partition
  fileSystems."/mnt/alt" = {
    device = "/dev/disk/by-uuid/8311303a-8695-4e5b-8e9d-0b513df77327";
    fsType = "ext4";
    options = [
      "defaults"
      "user"
      "x-gvfs-show"
    ];
  };
}

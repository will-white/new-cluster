How to clean disks
```bash
DISK="/dev/nvme0n1"
sgdisk --zap-all $DISK
dd if=/dev/zero of="$DISK" bs=1M count=100 oflag=direct,dsync
blkdiscard $DISK
```

#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"

if [ "${TARGET_ARCH}" = "arm64" ]; then
	echo 'arm_64bit=1' >> "${ROOTFS_DIR}/boot/config.txt"
fi

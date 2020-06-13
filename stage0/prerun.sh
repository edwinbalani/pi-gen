#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	case ${TARGET_ARCH} in
		armhf)
			bootstrap ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/raspbian/
			;;
		arm64)
			bootstrap --include=gnupg ${RELEASE} "${ROOTFS_DIR}" http://deb.debian.org/debian/
			;;
	esac
fi

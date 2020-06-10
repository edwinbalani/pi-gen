#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	case ${TARGET_ARCH} in
		armhf)
			bootstrap ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/raspbian/
			;;
		arm64)
			bootstrap --verbose ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/multiarch/
			;;
	esac
fi

#!/bin/bash -e
if [ "${TARGET_ARCH}" = "armhf" ]; then
	on_chroot << EOF
apt-get -o APT::Acquire::Retries=3 install -y raspi-copies-and-fills
EOF
fi

if [ -f "${ROOTFS_DIR}/etc/ld.so.preload" ]; then
   mv "${ROOTFS_DIR}/etc/ld.so.preload" "${ROOTFS_DIR}/etc/ld.so.preload.disabled"
fi

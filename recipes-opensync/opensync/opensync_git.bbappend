FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PLUME_CORE_PATCHES := "core"
OPENSYNC_CORE_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'OneWifi', ' file://${PLUME_CORE_PATCHES}/0001-ESW-12184-ds-len-util.patch;patchdir=../core', ' ', d)}"
OPENSYNC_CORE_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'OneWifi', ' file://${PLUME_CORE_PATCHES}/1100-onewifi-kconfig.patch;patchdir=../core', ' ', d)}"
OPENSYNC_CORE_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'OneWifi', ' file://${PLUME_CORE_PATCHES}/1101-onewifi-code.patch;patchdir=../core', ' ', d)}"
OPENSYNC_CORE_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'OneWifi', ' file://${PLUME_CORE_PATCHES}/1102-onewifi-bm-sm.patch;patchdir=../core', ' ', d)}"
OPENSYNC_CORE_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'OneWifi', ' file://${PLUME_CORE_PATCHES}/1103-onewifi-ocs-support.patch;patchdir=../core', ' ', d)}"
OPENSYNC_CORE_URI += " file://${PLUME_CORE_PATCHES}/createVersion.patch;patchdir=../core"

SYSROOT_DIRS += "/usr/opensync/lib"
EXTRA_OEMAKE += "INSTALL_HEADERS=y"
FILES_${PN} += "${prefix}/include/opensync/"

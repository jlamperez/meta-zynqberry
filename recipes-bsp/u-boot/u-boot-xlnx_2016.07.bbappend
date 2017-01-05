
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-Changed-arch-arm-dts-Makefile.patch"
SRC_URI += "file://0004-new-file-arch-arm-dts-zynqberry.dts.patch"
SRC_URI += "file://0005-new-file-configs-zynqberry_defconfig.patch"
SRC_URI += "file://0006-new-file-include-configs-zynqberry.h.patch"

SRC_URI += " file://ps7_init_gpl.h file://ps7_init_gpl.c"

HAS_PS7INIT += " \
                zynqberry_config \
                "

do_configure_prepend () {

        if test -e ${WORKDIR}/ps7_init_gpl.h; then
                mkdir -p ${S}/board/xilinx/zynq/zynqberry_hw_platform
                cp ${WORKDIR}/ps7_init_gpl.h ${S}/board/xilinx/zynq/zynqberry_hw_platform/
                cp ${WORKDIR}/ps7_init_gpl.c ${S}/board/xilinx/zynq/zynqberry_hw_platform/
                chmod 664 ${S}/board/xilinx/zynq/zynqberry_hw_platform/*
        fi
}

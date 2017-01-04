SRC_URI_append_zynqberry += "file://zynqberry.dts"

FILESEXTRAPATHS_prepend_zynqberry := "${THISDIR}/files/zynqberry:"

MACHINE_DEVICETREE_prepend_zynqberry = " \
                zynqberry.dts \
                "     

#!/bin/bash -e
set -o pipefail

upx bin/arm/v2ray-plugin_linux_arm7
upx bin/aarch64/v2ray-plugin_linux_arm64
upx --best bin/mips/v2ray-plugin_linux_mips_sf
upx --best bin/mipsel/v2ray-plugin_linux_mipsle_sf

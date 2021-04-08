#!/bin/bash -e
set -o pipefail

upx arm/v2ray-plugin_linux_arm7
upx aarch64/v2ray-plugin_linux_arm64
upx --best mips/v2ray-plugin_linux_mips_sf
upx --best mipsel/v2ray-plugin_linux_mipsle_sf

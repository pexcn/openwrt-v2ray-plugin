#!/bin/bash -e
set -o pipefail

upx --lzma bin/arm/v2ray-plugin_linux_arm7
upx --lzma bin/aarch64/v2ray-plugin_linux_arm64
upx --lzma --best bin/mips/v2ray-plugin_linux_mips_sf
upx --lzma --best bin/mipsel/v2ray-plugin_linux_mipsle_sf

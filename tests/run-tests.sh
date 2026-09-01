#!/usr/bin/env bash

set -e

ROOT="$(realpath "$(dirname "${BASH_SOURCE[0]}")/..")"

KERNEL_VERSION="6.18.48"
LINUX_ROOT="${ROOT}/upstream/linux-${KERNEL_VERSION}"
UPSTREAM_DIR="${ROOT}/upstream"

if [ ! -d "${LINUX_ROOT}" ]; then
    echo "Downloading Linux ${KERNEL_VERSION}."

    TARBALL="${UPSTREAM_DIR}/linux-${KERNEL_VERSION}.tar.xz"
    URL="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-${KERNEL_VERSION}.tar.xz"

    mkdir -p "${UPSTREAM_DIR}"
    curl -L -o "${TARBALL}" "${URL}"
    tar -xf "${TARBALL}" -C "${UPSTREAM_DIR}"
    rm "${TARBALL}"

    echo "Kernel source downloaded."
fi

CFLAGS=(
    -Wall
    -Wextra
    -Wno-cpp
    -fsyntax-only
    -nostdlibinc
)

verify_arch() {
    local linux_arch=$1
    local target_arch=$2

    local header_dir="${ROOT}/tests/headers/${linux_arch}"
    local test_file="${ROOT}/tests/verify-${target_arch}.c"

    if [ ! -d "${header_dir}/include" ]; then
        echo "Installing the header files for ${linux_arch}."
        make -C "${LINUX_ROOT}" headers_install ARCH="${linux_arch}" INSTALL_HDR_PATH="${header_dir}" > /dev/null
    fi

    clang --target="${target_arch}-linux-gnu" "${CFLAGS[@]}" -I"${header_dir}/include" "${test_file}"
    echo "Verified ${target_arch}."
}

verify_arch "x86_64" "x86_64"
verify_arch "arm64" "aarch64"
verify_arch "riscv" "riscv64"

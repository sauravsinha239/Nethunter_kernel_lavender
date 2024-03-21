DEFCONFIG="nethunter_defconfig"
PATH="/home/soul/kernel/custom-clang/bin:${PATH}" 
make O=out CC=clang ARCH=arm64 $DEFCONFIG
make  -j4   O=out \
			ARCH=arm64 \
			CC=clang \
			AR=llvm-ar \
			NM=llvm-nm \
			OBJCOPY=llvm-objcopy \
			OBJDUMP=llvm-objdump \
			STRIP=llvm-strip \
			CROSS_COMPILE=aarch64-linux-gnu- \
			CROSS_COMPILE_ARM32=arm-linux-gnueabi-

### Gentoo/Musl/Clang Overlay
This overlay contains modified ebuilds and patches for a system that is build with musl 
libc, clang as the primary C/C++ compiler, llvm binutils and libc++ as default C++ library

## Ebuild Sources
*Most patches can be found* [here](https://github.com/leonardohn/gentoo-patchset.git)

[dev-lang/rust](https://github.com/12101111/overlay/tree/master/dev-lang/rust) - musl compatible rust ebuild with support for libc++ and llvm-libunwind

[**sys-apps/musl-locales**](https://github.com/12101111/overlay/tree/master/sys-apps/musl-locales) - limited locale support for musl

**sys-libs/polly** - Polyhedral Optimization library for LLVM

FROM scratch AS ctx
COPY build_files /build_files
COPY system_files/common /system_files/common
COPY system_files/desktop /system_files/desktop
COPY system_files/server /system_files/server


system_files/common/usr/lib/systemd/system-preset

system_files/common/usr/lib/systemd/system-preset/150-common.preset
system_files/common/usr/lib/systemd/system/bootc-update.service

system_files/common/usr/libexec/bootc.aio.sh
system_files/common/usr/libexec/brew-aio.sh
system_files/common/usr/libexec/containers-aio.sh
system_files/common/usr/libexec/flatpak-aio.sh

system_files/common/usr/share/just/justfile

















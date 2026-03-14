FROM scratch AS ctx
COPY build_files /build_files
COPY system_files/common /system_files/common
COPY system_files/desktop /system_files/desktop
COPY system_files/server /system_files/server

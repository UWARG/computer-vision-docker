FROM dock0/arch

MAINTAINER UWARG

RUN printf '[archlinuxfr]\n\
SigLevel = Never\n\
Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf

RUN pacman -Sy --noconfirm
RUN pacman -S util-linux gawk yaourt sudo git gcc make exiv2 zbar vim hdf5 --noconfirm

RUN pacman -Syu --noconfirm
RUN pacman -S boost opencv cmake --noconfirm

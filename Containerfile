FROM quay.io/rockylinux/rockylinux:9
RUN dnf -y --enablerepo=crb install clang cmake ninja-build && dnf clean all
COPY build.sh /
ENTRYPOINT ["/build.sh"]

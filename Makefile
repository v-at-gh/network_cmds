COMPILER = clang
CFLAGS = -O3 -march=native -flto \
         -D __APPLE__ -D PRIVATE -D INET6 -D IPSEC -D AF_VSOCK \
         -Inetwork_cmds_lib \
         -Wall -Wextra -Wpedantic
SOURCES_NETSTAT = \
    netstat.tproj/main.c \
    netstat.tproj/inet.c \
    netstat.tproj/systm.c \
    netstat.tproj/if.c \
    netstat.tproj/bpf.c \
    netstat.tproj/vsock.c \
    netstat.tproj/unix.c \
    netstat.tproj/mptcp.c \
    netstat.tproj/inet6.c \
    netstat.tproj/data.c \
    netstat.tproj/ipsec.c \
    netstat.tproj/mbuf.c \
    netstat.tproj/route.c \
    netstat.tproj/mcast.c \
    netstat.tproj/misc.c \
    netstat.tproj/tp_astring.c \
    network_cmds_lib/network_cmds_lib.c
TARGETS = netstat

.PHONY: all clean

all: $(TARGETS)

netstat: $(SOURCES_NETSTAT)
	$(COMPILER) $(CFLAGS) -o $@ $^

clean:
	rm -f $(TARGETS)

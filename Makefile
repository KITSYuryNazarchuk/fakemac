CFLAGS=-fPIC -O2 -Wall -Werror -Wstrict-prototypes
LDFLAGS=-ldl

all: libfakemac.so

libfakemac.so: libfakemac.c
	$(CC) -shared -o libfakemac.so libfakemac.c $(CFLAGS) $(LDFLAGS)

install: all
	install -m 555 fakemac.sh /usr/bin/fakemac64
	install -m 444 libfakemac.so /usr/lib/libfakemac64.so

clean:
	rm -f libfakemac.so

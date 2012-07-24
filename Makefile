NAME="vzstat"
VERSION="0.4"
TARGET="${NAME}-${VERSION}"

tarball: clean
	git archive --format=tar --prefix=${TARGET}/ v${VERSION} | gzip > ${TARGET}.tar.gz

clean:
	rm -rf ${TARGET}.tar.gz


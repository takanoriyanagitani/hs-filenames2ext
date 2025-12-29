#!/bin/bash

printf \
	'%s\n' \
	/path/to/file.txt \
	.bashrc \
	file.tar.gz |
	./hs-filenames2ext

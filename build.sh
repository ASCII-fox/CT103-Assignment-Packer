if [ -z "${TITLE}" ]; then
    echo "Varible TITLE is unset"
    exit 1
fi
if [ -z "${SOURCE_DIR}" ]; then
    SOURCE_DIR="source/"
fi
CC=gcc
$CC -o "${TITLE}.elf" "${SOURCE_DIR}source.c" --std=c89 --pedantic -Wall || exit $?

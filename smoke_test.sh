if [ -z "${TITLE}" ]; then
  echo "Varible TITLE is unset"
  exit 1
fi
if [ -z "${SOURCE_DIR}" ]; then
  SOURCE_DIR="source/"
fi
if [ -z "${C_STD}" ]; then
  C_STD=c99
fi

CC=gcc

$CC "${SOURCE_DIR}source.c" --std="${C_STD}" --pedantic -Wall -lm -fsyntax-only || exit $?

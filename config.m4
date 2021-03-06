PHP_ARG_ENABLE(amf3, AMF3 support,
[  --enable-amf3           Enable AMF3 support])

if test "$PHP_AMF3" != "no"; then
  PHP_NEW_EXTENSION(amf3, amf3.c amf3_encode.c amf3_decode.c, $ext_shared)
  PHP_SUBST(AMF3_SHARED_LIBADD)
  AC_DEFINE([HAVE_AMF3], 1, [AMF3 support])
fi

include_directories(${CMAKE_SOURCE_DIR}/micropython)

set(micropython_SOURCE
        ${CMAKE_SOURCE_DIR}/micropython/py/mpstate.c
        ${CMAKE_SOURCE_DIR}/micropython/py/nlrthumb.c
        ${CMAKE_SOURCE_DIR}/micropython/py/nlrsetjmp.c
        ${CMAKE_SOURCE_DIR}/micropython/py/malloc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/qstr.c
        ${CMAKE_SOURCE_DIR}/micropython/py/vstr.c
        ${CMAKE_SOURCE_DIR}/micropython/py/mpprint.c
        ${CMAKE_SOURCE_DIR}/micropython/py/unicode.c
        ${CMAKE_SOURCE_DIR}/micropython/py/mpz.c
        ${CMAKE_SOURCE_DIR}/micropython/py/reader.c
        ${CMAKE_SOURCE_DIR}/micropython/py/lexer.c
        ${CMAKE_SOURCE_DIR}/micropython/py/parse.c
        ${CMAKE_SOURCE_DIR}/micropython/py/scope.c
        ${CMAKE_SOURCE_DIR}/micropython/py/compile.c
        ${CMAKE_SOURCE_DIR}/micropython/py/emitcommon.c
        ${CMAKE_SOURCE_DIR}/micropython/py/emitbc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmbase.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmx64.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmx86.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmthumb.c
        ${CMAKE_SOURCE_DIR}/micropython/py/emitinlinethumb.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmarm.c
        ${CMAKE_SOURCE_DIR}/micropython/py/asmxtensa.c
        ${CMAKE_SOURCE_DIR}/micropython/py/emitinlinextensa.c
        ${CMAKE_SOURCE_DIR}/micropython/py/formatfloat.c
        ${CMAKE_SOURCE_DIR}/micropython/py/parsenumbase.c
        ${CMAKE_SOURCE_DIR}/micropython/py/parsenum.c
        ${CMAKE_SOURCE_DIR}/micropython/py/emitglue.c
        ${CMAKE_SOURCE_DIR}/micropython/py/persistentcode.c
        ${CMAKE_SOURCE_DIR}/micropython/py/runtime.c
        ${CMAKE_SOURCE_DIR}/micropython/py/runtime_utils.c
        ${CMAKE_SOURCE_DIR}/micropython/py/nativeglue.c
        ${CMAKE_SOURCE_DIR}/micropython/py/stackctrl.c
        ${CMAKE_SOURCE_DIR}/micropython/py/argcheck.c
        ${CMAKE_SOURCE_DIR}/micropython/py/warning.c
        ${CMAKE_SOURCE_DIR}/micropython/py/map.c
        ${CMAKE_SOURCE_DIR}/micropython/py/obj.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objarray.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objattrtuple.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objbool.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objboundmeth.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objcell.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objclosure.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objcomplex.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objdict.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objenumerate.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objexcept.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objfilter.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objfloat.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objfun.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objgenerator.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objgetitemiter.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objint.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objint_longlong.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objint_mpz.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objlist.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objmap.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objmodule.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objobject.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objpolyiter.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objproperty.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objnone.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objnamedtuple.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objrange.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objreversed.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objset.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objsingleton.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objslice.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objstr.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objstrunicode.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objstringio.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objtuple.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objtype.c
        ${CMAKE_SOURCE_DIR}/micropython/py/objzip.c
        ${CMAKE_SOURCE_DIR}/micropython/py/opmethods.c
        ${CMAKE_SOURCE_DIR}/micropython/py/sequence.c
        ${CMAKE_SOURCE_DIR}/micropython/py/stream.c
        ${CMAKE_SOURCE_DIR}/micropython/py/binary.c
        ${CMAKE_SOURCE_DIR}/micropython/py/builtinimport.c
        ${CMAKE_SOURCE_DIR}/micropython/py/builtinevex.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modarray.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modbuiltins.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modcollections.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modgc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modio.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modmath.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modcmath.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modmicropython.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modstruct.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modsys.c
        ${CMAKE_SOURCE_DIR}/micropython/py/moduerrno.c
        ${CMAKE_SOURCE_DIR}/micropython/py/modthread.c
        ${CMAKE_SOURCE_DIR}/micropython/py/bc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/showbc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/repl.c
        ${CMAKE_SOURCE_DIR}/micropython/py/smallint.c
        ${CMAKE_SOURCE_DIR}/micropython/py/frozenmod.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/moductypes.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modujson.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modure.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/moduzlib.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/moduheapq.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modutimeq.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/moduhashlib.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modubinascii.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/virtpin.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/machine_mem.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/machine_pinbase.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/machine_pulse.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/machine_i2c.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/machine_spi.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modussl_axtls.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modussl_mbedtls.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modurandom.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/moduselect.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modwebsocket.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modwebrepl.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/modframebuf.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/fsusermount.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat_ffconf.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat_diskio.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat_file.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat_reader.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/vfs_fat_misc.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/utime_mphal.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../extmod/uos_dupterm.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../lib/embed/abort_.c
        ${CMAKE_SOURCE_DIR}/micropython/py/../lib/utils/printf.c)

add_library(micropython ${micropython_SOURCE})

add_library(
        emit_native
        ${CMAKE_SOURCE_DIR}/micropython/py/emitnative.c
        ${generated_qstrings})
target_compile_definitions(emit_native PRIVATE -DN_THUMB)

add_library(
        py_vm
        ${CMAKE_SOURCE_DIR}/micropython/py/vm.c
        ${CMAKE_SOURCE_DIR}/micropython/py/gc.c)
target_compile_options(py_vm PRIVATE -O3)

target_link_libraries(micropython emit_native py_vm)

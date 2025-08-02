if [ -z "${CYGWIN}" ]; then
  meson setup --prefix=$(realpath ../xkbdata) builddir
else
  meson setup --prefix=$(cygpath -w ../xkbdata) builddir
fi
meson compile -C builddir
meson install -C builddir

cp ../xkbdata/rules/base ../xkbdata/rules/xorg
cp ../xkbdata/rules/base.lst ../xkbdata/rules/xorg.lst
cp ../xkbdata/rules/base.xml ../xkbdata/rules/xorg.xml

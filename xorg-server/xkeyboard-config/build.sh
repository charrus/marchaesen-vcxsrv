if [ -z "${CYGWIN}" ]; then
  meson setup --prefix=$(realpath ../xkbdata) builddir
else
  meson setup --prefix=$(realpath ../xkbdata) builddir
fi
pushd builddir
meson compile
meson install
popd

# cp ../xkbdata/rules/base ../xkbdata/rules/xorg
# cp ../xkbdata/rules/base.lst ../xkbdata/rules/xorg.lst
# cp ../xkbdata/rules/base.xml ../xkbdata/rules/xorg.xml

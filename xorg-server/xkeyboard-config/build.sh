if [ -z "${CYGWIN}" ]; then
  meson setup -D=xorg-rules-copy=true --prefix=$(realpath ../xkbdata) builddir
else
  meson setup -D=xorg-rules-copy=true --prefix=$(cygpath -w ../xkbdata) builddir
fi
cd builddir; meson compile; meson install


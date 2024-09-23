config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

# Keep same perms on cuda.{,}sh.new:
if [ -e etc/profile.d/cuda.sh ]; then
  cp -a etc/profile.d/cuda.sh etc/profile.d/cuda.sh.incoming
  cat etc/profile.d/cuda.sh.new > etc/profile.d/cuda.sh.incoming
  mv etc/profile.d/cuda.sh.incoming etc/profile.d/cuda.sh.new
fi

config etc/profile.d/cuda.sh.new

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache -f usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi

if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi


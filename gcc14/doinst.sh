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

# Keep same perms on gcc14.{,}sh.new:
if [ -e etc/profile.d/gcc14.sh ]; then
  cp -a etc/profile.d/gcc14.sh etc/profile.d/gcc14.sh.incoming
  cat etc/profile.d/gcc14.sh.new > etc/profile.d/gcc14.sh.incoming
  mv etc/profile.d/gcc14.sh.incoming etc/profile.d/gcc14.sh.new
fi
if [ -e etc/profile.d/gcc14.csh ]; then
  cp -a etc/profile.d/gcc14.csh etc/profile.d/gcc14.csh.incoming
  cat etc/profile.d/gcc14.csh.new > etc/profile.d/gcc14.csh.incoming
  mv etc/profile.d/gcc14.csh.incoming etc/profile.d/gcc14.csh.new
fi

config etc/profile.d/gcc14.sh.new
config etc/profile.d/gcc14.csh.new


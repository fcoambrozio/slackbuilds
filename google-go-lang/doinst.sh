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

# Keep same perms on go.{,}sh.new:
if [ -e etc/profile.d/go.sh ]; then
  cp -a etc/profile.d/go.sh etc/profile.d/go.sh.incoming
  cat etc/profile.d/go.sh.new > etc/profile.d/go.sh.incoming
  mv etc/profile.d/go.sh.incoming etc/profile.d/go.sh.new
fi
if [ -e etc/profile.d/go.csh ]; then
  cp -a etc/profile.d/go.csh etc/profile.d/go.csh.incoming
  cat etc/profile.d/go.csh.new > etc/profile.d/go.csh.incoming
  mv etc/profile.d/go.csh.incoming etc/profile.d/go.csh.new
fi

config etc/profile.d/go.sh.new
config etc/profile.d/go.csh.new


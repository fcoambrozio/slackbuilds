
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

/sbin/ldconfig &

G_ID=$(grep ollama /etc/group | cut -f3 -d:)
U_ID=$(grep ollama /etc/passwd | cut -f3 -d:)

if [ -z "$G_ID" ]; then
    G_ID=@@G_ID@@

    echo "Adding ollama group: $G_ID"
    groupadd -r -g $G_ID ollama
fi

if [ -z "$U_ID" ]; then
    U_ID=@@U_ID@@

    echo "Adding ollama user: $G_ID"
    useradd -m -r -u $U_ID -g $G_ID -d /var/lib/ollama -s /bin/bash ollama
fi

config etc/profile.d/ollama.sh.new
config etc/rc.d/rc.ollama.new
config etc/ld.so.conf.d/ollama.conf.new
config etc/logrotate.d/ollama.new
config etc/default/ollama.new


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

if [ -s ./install/ollama-start.sh ]; then
    mkdir -v -p /var/lib/ollama/bin
    cp -v ./install/ollama-start.sh /var/lib/ollama/bin/start.sh
    chmod +x /var/lib/ollama/bin/start.sh
    chown -R ollama:ollama /var/lib/ollama/bin
fi

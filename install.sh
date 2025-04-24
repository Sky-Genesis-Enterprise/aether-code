#!/bin/bash
# filepath: /home/liamforsky/Bureau/office/aether-code/install.sh

# Variables
APP_NAME="aether-code"
SERVICE_FILE="/etc/systemd/system/$APP_NAME.service"
APP_DIR=$(pwd)
NODE_EXEC=$(which node)

# Vérification des prérequis
if ! command -v node &> /dev/null; then
    echo "Node.js n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

if ! command -v npm &> /dev/null; then
    echo "npm n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

# Installation des dépendances
echo "Installation des dépendances..."
npm install

# Création du fichier de service systemd
echo "Création du service systemd..."
sudo bash -c "cat > $SERVICE_FILE" <<EOL
[Unit]
Description=Aether Code Service
After=network.target

[Service]
ExecStart=$NODE_EXEC $APP_DIR/server.js
WorkingDirectory=$APP_DIR
Restart=always
User=$(whoami)
Environment=NODE_ENV=production
EnvironmentFile=$APP_DIR/.env

[Install]
WantedBy=multi-user.target
EOL

# Rechargement de systemd et activation du service
echo "Activation et démarrage du service..."
sudo systemctl daemon-reload
sudo systemctl enable $APP_NAME
sudo systemctl start $APP_NAME

echo "L'application $APP_NAME a été installée et est en cours d'exécution en tant que service."
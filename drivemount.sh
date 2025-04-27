#!/bin/bash

# Verificar se o usuário tem permissões de superusuário
if ! sudo -v; then
    echo "Este script requer permissões de administrador (sudo)."
    exit 1
fi

# Verificar se foi fornecido um argumento (letra do drive)
if [ -z "$1" ]; then
    echo "Por favor, forneça a letra do drive a ser montado. Exemplo: ./mount_usb_drive.sh d"
    exit 1
fi

# Letra do drive a ser montado (por exemplo, "d" para D:, "e" para E:, etc.)
DRIVE_LETTER=$1

# Caminho onde você deseja montar o drive
MOUNT_POINT="/mnt/$DRIVE_LETTER"

# Verificar se o diretório de montagem já existe
if [ ! -d "$MOUNT_POINT" ]; then
    echo "Criando o diretório de montagem em $MOUNT_POINT"
    sudo mkdir -p "$MOUNT_POINT"  # Usar sudo para criar o diretório com permissões de superusuário
fi

# Montar o drive
echo "Montando a unidade $DRIVE_LETTER: no WSL em $MOUNT_POINT"
sudo mount -t drvfs "$DRIVE_LETTER:" "$MOUNT_POINT"

echo "Unidade $DRIVE_LETTER: montada com sucesso em $MOUNT_POINT"

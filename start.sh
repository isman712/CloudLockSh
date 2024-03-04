#!/bin/bash

# Este script muestra un mensaje en pantalla enorme utilizando toilet

# Instalar toilet si no está instalado
if ! command -v toilet &> /dev/null; then
    echo "Instalando toilet..."
    # Comando para instalar toilet, puede variar dependiendo del sistema operativo
    # Por ejemplo, en Debian/Ubuntu sería: sudo apt-get install toilet
    # En CentOS/RHEL: sudo yum install toilet
    # Asegúrate de tener permisos de administrador para instalar el paquete
    exit 1
fi

# Mostrar el mensaje en pantalla
toilet -f future -F metal "CloudLock"

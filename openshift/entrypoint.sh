#!/bin/bash

# Verificar si compose.yml existe
if [[ -f "compose.yml" ]]; then
    echo "Se encontró compose.yml, levantando servicios..."
    podman compose up -d --remove-orphans
    exec bash
else
    echo "No se encontró compose.yml en /workspace"
    exec bash
fi

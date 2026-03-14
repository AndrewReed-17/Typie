#!/bin/bash

# ==============================
# Git Synchronizing - Fedora
# ==============================

CommitName="Sync automatique"

pause() {
    read -rp "Appuyez sur Entrée pour continuer..."
}

while true; do
    clear
    echo "    Sélection d'options"
    echo "=============================="
    echo "1. Run the sync"
    echo "2. Define the commit name"
    echo "3. Quit"
    echo

    read -rp "Votre choix : " key

    case "$key" in
        1)
            echo "=== GitSync : début ==="

            echo "[1] Pull depuis le remote..."
            git pull
            if [ $? -ne 0 ]; then
                echo "ERREUR : impossible de pull."
                pause
                continue
            fi

            echo "[2] Add de tous les fichiers modifiés..."
            git add -A

            echo "[3] Commit automatique..."
            git commit -m "$CommitName"

            echo "[4] Push vers le dépôt distant..."
            git push
            if [ $? -ne 0 ]; then
                echo "ERREUR : impossible de push."
                pause
                continue
            fi

            echo "=== GitSync : terminé ==="
            pause
            ;;
        2)
            clear
            echo "Commit actuel : $CommitName"
            echo "====================================="
            echo "1. Retour au message par défaut"
            echo "2. Définir un nouveau message"
            echo "3. Retour au menu principal"
            echo

            read -rp "Votre choix : " key2

            case "$key2" in
                1)
                    CommitName="Sync automatique"
                    ;;
                2)
                    read -rp "Entrez le nouveau message de commit : " CommitName
                    ;;
                3)
                    ;;
                *)
                    echo "Option invalide."
                    pause
                    ;;
            esac
            ;;
        3)
            echo "Fermeture du script..."
            exit 0
            ;;
        *)
            echo "Choix invalide."
            pause
            ;;
    esac
done

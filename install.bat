:: filepath: /home/liamforsky/Bureau/office/aether-code/install.bat

@echo off
SET APP_NAME=AetherCode
SET APP_DIR=%~dp0
SET NODE_EXEC=node
SET SERVICE_NAME=AetherCodeService

:: Vérification des prérequis
where %NODE_EXEC% >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Node.js n'est pas installé. Veuillez l'installer avant de continuer.
    exit /b 1
)

:: Installation des dépendances
echo Installation des dépendances...
npm install

:: Vérification de nssm
where nssm >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo NSSM (Non-Sucking Service Manager) n'est pas installé. Veuillez l'installer avant de continuer.
    exit /b 1
)

:: Création du service avec nssm
echo Création du service Windows...
nssm install %SERVICE_NAME% %NODE_EXEC% %APP_DIR%server.js
nssm set %SERVICE_NAME% AppDirectory %APP_DIR%
nssm set %SERVICE_NAME% AppEnvironmentExtra NODE_ENV=production
nssm set %SERVICE_NAME% AppEnvironmentFile %APP_DIR%.env

:: Démarrage du service
echo Démarrage du service...
nssm start %SERVICE_NAME%

echo L'application %APP_NAME% a été installée et est en cours d'exécution en tant que service.
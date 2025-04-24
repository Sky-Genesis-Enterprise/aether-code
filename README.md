# Aether Code

**Aether Code** is a GitHub-inspired source code management platform designed to offer an enhanced user experience and advanced features. It enables developers to collaborate efficiently on projects, manage code repositories, and benefit from seamless integration with various development tools.

## Features

- **Repository Management**: Easily create, clone and manage code repositories.
- **Version Control**: Use Git for version control.
- **Collaboration**: Invite collaborators, manage permissions, and track contributions.
- **Intuitive User Interface**: Browse your repositories, view commits, and more.
- **Complete API**: Interact with the platform via a RESTful API.
- **Security**: Secure authentication and permissions management.

## Installation

### Prerequisites

- Node.js (version 14.x or higher)
- npm (version 6.x or higher)
- PostgreSQL (version 12.x or higher)

### Installation steps

1. **Run the repository**

   ```bash
   git clone https://github.com/Sky-Genesis-Enterprise/aether-code.git
   cd aether-code
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Configure the database**

   Create a `.env` file at the root of the project and add the necessary environment variables:

   ```env
   DATABASE_URL=postgres://username:password@localhost:5432/aethercode
   JWT_SECRET=your_secret_jwt
   ```

4. **Migrate database**

   ```bash
   npm run migrate
   ```

5. **Start Server**

   ```bash
   npm start
   ```

6. **Access the Application**

   Open your browser and go to http://localhost:3000.

## Electron

Aether Code includes an **Electron** wrapper for a desktop application experience.

### Running the Electron App

1. Navigate to the `electron` folder:

   ```bash
   cd electron
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start the Electron app:

   ```bash
   npm start
   ```

4. The desktop application will launch, providing the same functionality as the web version.

## Docker

Aether Code can also be run using Docker for easier deployment.

### Using Docker

1. Build the Docker image:

   ```bash
   docker build -t aether-code .
   ```

2. Run the Docker container:

   ```bash
   docker run -p 3000:3000 --env-file .env aether-code
   ```

3. Alternatively, use `docker-compose` for a multi-container setup (e.g., with PostgreSQL):

   ```bash
   docker-compose up --build
   ```

4. Access the application at [http://localhost:3000](http://localhost:3000).

---

## Deployment

Aether Code peut être déployé localement ou sur un serveur en utilisant des scripts d'installation pour automatiser le processus. Voici les étapes pour déployer l'application sous forme de service.

### Déploiement local (Linux/Windows)

1. **Exécuter le script d'installation**

   Le script `install.sh` configure l'application pour qu'elle s'exécute en tant que service `systemd`.

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

2. **Vérifier le statut du service**

   Une fois le script exécuté, le service sera démarré automatiquement. Vous pouvez vérifier son statut avec :

   ```bash
   sudo systemctl status aether-code
   ```

3. **Arrêter ou redémarrer le service**

   - Pour arrêter le service :
     ```bash
     sudo systemctl stop aether-code
     ```

   - Pour redémarrer le service :
     ```bash
     sudo systemctl restart aether-code
     ```

4. **Accéder à l'application**

   Ouvrez votre navigateur et accédez à [http://localhost:3000](http://localhost:3000).

---

### Déploiement local (Windows)

1. **Exécuter le script d'installation**

   Le script `install.bat` configure l'application pour qu'elle s'exécute en tant que service Windows à l'aide de `nssm`.

   Double-cliquez sur le fichier `install.bat` ou exécutez-le dans un terminal :

   ```cmd
   install.bat
   ```

2. **Vérifier le service**

   Une fois le script exécuté, le service sera démarré automatiquement. Vous pouvez vérifier son statut dans le gestionnaire de services Windows (`services.msc`).

3. **Arrêter ou redémarrer le service**

   Utilisez `nssm` pour gérer le service :

   - Pour arrêter le service :
     ```cmd
     nssm stop AetherCodeService
     ```

   - Pour redémarrer le service :
     ```cmd
     nssm restart AetherCodeService
     ```

4. **Accéder à l'application**

   Ouvrez votre navigateur et accédez à [http://localhost:3000](http://localhost:3000).

---

### Déploiement avec Docker

1. **Construire l'image Docker**

   Utilisez le script `docker:build` pour construire l'image Docker de l'application :

   ```bash
   npm run docker:build
   ```

2. **Exécuter le conteneur Docker**

   Lancez le conteneur Docker avec le script `docker:run` :

   ```bash
   npm run docker:run
   ```

3. **Déploiement multi-conteneurs avec Docker Compose**

   Si vous utilisez une base de données PostgreSQL, utilisez `docker-compose` pour déployer l'application et la base de données ensemble :

   ```bash
   npm run docker:compose
   ```

4. **Accéder à l'application**

   Ouvrez votre navigateur et accédez à [http://localhost:3000](http://localhost:3000).

---

### Notes importantes

- Assurez-vous que les fichiers `.env` contiennent les bonnes configurations pour votre environnement (base de données, JWT, etc.).
- Pour un déploiement en production, configurez un proxy inverse comme **Nginx** ou **Apache** pour gérer les connexions HTTPS et le routage.
- Sur un serveur distant, ouvrez les ports nécessaires (par exemple, 3000) dans le pare-feu.

---

## Use

### Registration and Login

- **Registration**: Create an account using the user interface or API.
- **Login**: Log in with your credentials to access your dashboard.

### Deposit Management

- **Create a Repository**: Use the user interface or API to create a new repository.
- **Cloning a Repository**: Clone an existing repository using Git.
- **Manage Collaborators**: Invite collaborators and manage their permissions.

## Contribution

We welcome contributions from the community! To contribute to Aether Code, follow these steps:

1. **Fork the Deposit**

   Fork the repository on your GitHub account.

2. **Create a Branch**

   ```bash
   git checkout -b feature/new-feature
   ```

3. **Make Modifications**

   Make your changes and commit them.

   ```bash
   git commit -am 'Add a new feature'
   ```

4. **Push Modifications**

   ```bash
   git push origin feature/new-feature
   ```

5. **Create a Pull Request**

   Open a pull request on the original repository and describe your changes.

## Contact

If you have any questions or suggestions, please don't hesitate to contact us at [contact@skygenesisenterprise.com](mailto:contact@skygenesisenterprise.com).

## License

This project is licensed under the Apache 2.0 license. See the [LICENSE](LICENSE) file for details.

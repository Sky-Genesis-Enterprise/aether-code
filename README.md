# Aether Code

**Aether Code** is a GitHub-inspired source code management platform designed to offer an enhanced user experience and advanced features. It enables developers to collaborate efficiently on projects, manage code repositories, and benefit from seamless integration with various development tools.

## Features

- **Repository Management**: Easily create, clone, and manage code repositories.
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

1. **Clone the repository**

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

4. **Migrate the database**

   ```bash
   npm run migrate
   ```

5. **Start the server**

   ```bash
   npm start
   ```

6. **Access the application**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

---

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

---

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

Aether Code can be deployed locally or on a server using installation scripts to automate the process. Below are the steps to deploy the application as a service.

### Local Deployment (Linux/macOS)

1. **Run the installation script**

   The `install.sh` script configures the application to run as a `systemd` service.

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

2. **Check the service status**

   Once the script is executed, the service will start automatically. You can check its status with:

   ```bash
   sudo systemctl status aether-code
   ```

3. **Stop or restart the service**

   - To stop the service:
     ```bash
     sudo systemctl stop aether-code
     ```

   - To restart the service:
     ```bash
     sudo systemctl restart aether-code
     ```

4. **Access the application**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

---

### Local Deployment (Windows)

1. **Run the installation script**

   The `install.bat` script configures the application to run as a Windows service using `nssm`.

   Double-click the `install.bat` file or run it in a terminal:

   ```cmd
   install.bat
   ```

2. **Check the service**

   Once the script is executed, the service will start automatically. You can check its status in the Windows Service Manager (`services.msc`).

3. **Stop or restart the service**

   Use `nssm` to manage the service:

   - To stop the service:
     ```cmd
     nssm stop AetherCodeService
     ```

   - To restart the service:
     ```cmd
     nssm restart AetherCodeService
     ```

4. **Access the application**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

---

### Deployment with Docker

1. **Build the Docker image**

   Use the `docker:build` script to build the Docker image for the application:

   ```bash
   npm run docker:build
   ```

2. **Run the Docker container**

   Start the Docker container using the `docker:run` script:

   ```bash
   npm run docker:run
   ```

3. **Multi-container deployment with Docker Compose**

   If you are using a PostgreSQL database, use `docker-compose` to deploy the application and the database together:

   ```bash
   npm run docker:compose
   ```

4. **Access the application**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

---

### Important Notes

- Ensure that the `.env` file contains the correct configurations for your environment (database, JWT, etc.).
- For production deployment, configure a reverse proxy like **Nginx** or **Apache** to handle HTTPS connections and routing.
- On a remote server, open the necessary ports (e.g., 3000) in the firewall.

---

## Usage

### Registration and Login

- **Registration**: Create an account using the user interface or API.
- **Login**: Log in with your credentials to access your dashboard.

### Repository Management

- **Create a Repository**: Use the user interface or API to create a new repository.
- **Clone a Repository**: Clone an existing repository using Git.
- **Manage Collaborators**: Invite collaborators and manage their permissions.

---

## Contribution

We welcome contributions from the community! To contribute to Aether Code, follow these steps:

1. **Fork the Repository**

   Fork the repository on your GitHub account.

2. **Create a Branch**

   ```bash
   git checkout -b feature/new-feature
   ```

3. **Make Changes**

   Make your changes and commit them.

   ```bash
   git commit -am 'Add a new feature'
   ```

4. **Push Changes**

   ```bash
   git push origin feature/new-feature
   ```

5. **Create a Pull Request**

   Open a pull request on the original repository and describe your changes.

---

## Contact

If you have any questions or suggestions, please don't hesitate to contact us at [contact@skygenesisenterprise.com](mailto:contact@skygenesisenterprise.com).

---

## License

This project is licensed under the Apache 2.0 license. See the [LICENSE](LICENSE) file for details.

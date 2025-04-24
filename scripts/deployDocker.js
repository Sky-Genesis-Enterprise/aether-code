// filepath: scripts/deployDocker.js
const { execSync } = require('child_process');

console.log('Building Docker image...');
execSync('docker build -t aether-code:latest .', { stdio: 'inherit' });

console.log('Running Docker container...');
execSync('docker run -p 3000:3000 aether-code:latest', { stdio: 'inherit' });
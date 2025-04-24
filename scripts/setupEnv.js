// filepath: scripts/setupEnv.js
const fs = require('fs');

const setupEnv = () => {
    if (!fs.existsSync('.env')) {
        fs.copyFileSync('.env.example', '.env');
        console.log('.env file created from .env.example');
    }
};

setupEnv();
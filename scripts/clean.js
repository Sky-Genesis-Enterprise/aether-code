// filepath: scripts/clean.js
const fs = require('fs');
const path = require('path');

const foldersToClean = ['dist', 'build', 'logs'];

foldersToClean.forEach((folder) => {
    if (fs.existsSync(folder)) {
        fs.rmSync(folder, { recursive: true, force: true });
        console.log(`Deleted folder: ${folder}`);
    }
});
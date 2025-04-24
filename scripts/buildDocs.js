// filepath: scripts/buildDocs.js
const { execSync } = require('child_process');

execSync('npx typedoc --out docs src', { stdio: 'inherit' });
console.log('Documentation generated in the "docs" folder.');
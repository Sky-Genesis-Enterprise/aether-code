const { contextBridge } = require('electron');

contextBridge.exposeInMainWorld('api', {
  // Exposez ici des fonctions sécurisées pour le renderer
  sayHello: () => console.log('Hello from Electron!'),
});
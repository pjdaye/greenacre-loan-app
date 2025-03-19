const { timeoutMS } = require('./stryker.conf.js');

// stryker.server.conf.js
module.exports = {
    // Base configuration
    ...require('./stryker.conf.js'),
    
    // Server-specific overrides
    mutate: [
      "server/**/*.{js,ts}",
      "!server/**/*.{spec,test}.{js,ts}",
      "!client/src/App.js"
    ],
    commandRunner: {
      // command: "npx playwright test --grep='@api'",
      command: "npx playwright test",
      cwd: "./test"
    },
    timeoutMS: 120000,
  };
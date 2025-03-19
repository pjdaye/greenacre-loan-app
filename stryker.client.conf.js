// stryker.client.conf.js
module.exports = {
    // Base configuration
    ...require('./stryker.conf.js'),

    // Client-specific overrides
    mutate: [
        "client/src/**/*.{js,jsx,ts,tsx}",
        "!client/src/**/*.{spec,test}.{js,jsx,ts,tsx}"
    ],
    commandRunner: {
        command: "npx playwright test --grep='@client'",
        cwd: "./test"
    }
};
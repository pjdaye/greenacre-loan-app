// @ts-check
/**
 * @type {import("@stryker-mutator/api/core").PartialStrykerOptions}
 */
module.exports = {
    packageManager: "npm",
    reporters: ["html", "clear-text", "progress"],
    testRunner: "command",
    commandRunner: {
        command: "npx playwright test",
        cwd: "./test"  // Important: run commands from the tests directory
    },
    coverageAnalysis: "perTest",
    mutate: [
        "client/src/**/*.{js,jsx,ts,tsx}",
        "!client/src/**/*.{spec,test}.{js,jsx,ts,tsx}",
        "server/**/*.{js,jsx,ts,tsx}",
        "!server/**/*.{spec,test}.{js,jsx,ts,tsx}"
    ],
    concurrency: 4,
    timeoutMS: 60000
};
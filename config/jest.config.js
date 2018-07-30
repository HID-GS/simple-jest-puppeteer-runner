// jest.config.js
module.exports = {
  // ...
  "preset": "jest-puppeteer",
  "rootDir": "/app",
  "projects": [
    {
      "displayName": "jest-puppeteer",
      "runner": "jest-puppeteer",
      "testMatch": ["**/test/puppeteer/**/*.js"]
    }
  ]
};


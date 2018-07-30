// jest-puppeteer.config.js
module.exports = {
  launch: {
//    dumpio: true,
//    headless: process.env.HEADLESS !== 'false',
    args: ['--no-sandbox'],
  },
}

/**
 * Entry
 * Reference: http://webpack.github.io/docs/configuration.html#entry
 * Should be an empty object if it's generating a test build
 * Karma will set this when it's a test build
 */
module.exports = function(mode) {
  return mode.isTest ? {} : {
    app: './src/app/app.js',
    campaign: './src/campaign/campaign.js'
  };
};
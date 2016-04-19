/**
 * Entry
 * Reference: http://webpack.github.io/docs/configuration.html#entry
 * Should be an empty object if it's generating a test build
 * Karma will set this when it's a test build
 */
module.exports = function(mode) {
  return mode.isTest ? {} : {
    'angular-vendor': ['angular', 'angular-ui-router'],
    // 'date-card' : './src/app/components/date-card/date-card.module.coffee',
    'campaign-app': './src/app/pages/campaign/campaign.app.coffee'
  };
};
/**
 * Entry
 * Reference: http://webpack.github.io/docs/configuration.html#entry
 * Should be an empty object if it's generating a test build
 * Karma will set this when it's a test build
 */
module.exports = function(mode) {
  return mode.isTest ? {} : {
    'vendor': [
      'angular', 
      'angular-ui-router',
      'angular-translate',
      'angular-translate-loader-partial',
      'ramda'
    ],
    // 'date-card' : './src/app/components/date-card/date-card.module.coffee',
    'campaign-app': './src/app/pages/campaign/campaign.app.coffee',
    'plan-app': './src/app/pages/plan/plan.app.coffee'
  };
};
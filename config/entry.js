/**
 * Entry
 * Reference: http://webpack.github.io/docs/configuration.html#entry
 * Should be an empty object if it's generating a test build
 * Karma will set this when it's a test build
 */
module.exports = function(mode) {
  return mode.isTest ? {} : {
    'vendor': [
      'angular',                  // Angular.js
      'angular-component-router', // Angular Component Router  
      'angular-translate',        // Provide language translation capabilities
      'angular-sanitize',         // Required for angular-translation sanitize security setting
      'ramda'
    ],
    'campaign-app': './src/app/applications/campaign/campaign.app.coffee'
    // 'plan-app': './src/app/applications/plan/plan.app.coffee'
  };
};
/**
 * Resolve
 * Resolve the different dependence for the app
 **/
var path = require('path');
var nodeModules = path.resolve(__dirname, '../node_modules');

module.exports = function(mode) {
  return {
    alias: {
      'angular': path.resolve(nodeModules, 'angular/angular.min.js')
    }
  };
};
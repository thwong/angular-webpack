/**
 * PostCSS
 * Reference: https://github.com/postcss/autoprefixer-core
 * Add vendor prefixes to your css
 */
var autoprefixer = require('autoprefixer');

module.exports = function(mode) {
  return [
    autoprefixer({
      browsers: ['last 2 version']
    })
  ];
};
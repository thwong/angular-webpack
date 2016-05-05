// CSS LOADER
// Reference: https://github.com/webpack/css-loader
// Allow loading css through js
//
// Reference: https://github.com/postcss/postcss-loader
// Postprocess your css with PostCSS plugins
var ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = function(mode) {
  return {
    test: /\.scss$/,
    loader: mode.isTest ? 'null' : 'style!css!sass'
    // loader: mode.isTest ? 'null' : ExtractTextPlugin.extract('style', 'css?sourceMap!postcss')
  };
};
/**
 * Plugins
 * Reference: http://webpack.github.io/docs/configuration.html#plugins
 * List: http://webpack.github.io/docs/list-of-plugins.html
 */
var webpack = require('webpack');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CommonsChunkPlugin = require('webpack-vendor-chunk-plugin');

module.exports = function(mode) {
  var plugins = [];

  // Skip rendering index.html in test mode
  if (!mode.isTest) {
    // Reference: https://github.com/ampedandwired/html-webpack-plugin
    // Render index.html`
    plugins.push(
      new HtmlWebpackPlugin({
        template: './src/public/index.html',
        inject: 'body',
        chunks: mode.module,
        chunksSortMode: 'dependency'
      }),

      // Reference: https://github.com/webpack/extract-text-webpack-plugin
      // Extract css files
      // Disabled when in test mode or not in build mode
      new ExtractTextPlugin('[name].[hash].css', {disable: !mode.isProd}),

      // Add in the Common Chunk Vendor Plugin
      new webpack.optimize.CommonsChunkPlugin('angular-vendor', 'angular-vendor.js')
    )
  }

  // Add build specific plugins
  if (mode.isProd) {
    plugins.push(
      // Reference: http://webpack.github.io/docs/list-of-plugins.html#noerrorsplugin
      // Only emit files when there are no errors
      new webpack.NoErrorsPlugin(),

      // Reference: http://webpack.github.io/docs/list-of-plugins.html#dedupeplugin
      // Dedupe modules in the output
      new webpack.optimize.DedupePlugin(),

      // Reference: http://webpack.github.io/docs/list-of-plugins.html#uglifyjsplugin
      // Minify all javascript, switch loaders to minimizing mode
      new webpack.optimize.UglifyJsPlugin(),

      // Copy assets from the public folder
      // Reference: https://github.com/kevlened/copy-webpack-plugin
      new CopyWebpackPlugin([{
        from: __dirname + '/src/public'
      }])
    )
  }

  return plugins;

};
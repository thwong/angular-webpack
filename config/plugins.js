/**
 * Plugins
 * Reference: http://webpack.github.io/docs/configuration.html#plugins
 * List: http://webpack.github.io/docs/list-of-plugins.html
 */
var path = require('path');
var R = require('ramda');
var webpack = require('webpack');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CommonsChunkPlugin = require('webpack-vendor-chunk-plugin');

module.exports = function(mode) {
  var plugins = [];

  var apps = {
    'campaign-app': new HtmlWebpackPlugin({
        template: './src/app/applications/campaign/campaign.app.html',
        inject: 'body',
        chunks: ['vendor', 'campaign-app'],
        chunksSortMode: 'dependency',
        filename: 'campaign/index.html'
      }),
    'plan-app': new HtmlWebpackPlugin({
        template: './src/app/applications/plan/plan.app.html',
        inject: 'body',
        chunks: ['vendor', 'plan-app'],
        chunksSortMode: 'dependency',
        filename: 'plan/index.html'
      })
  };

  // Skip rendering index.html in test mode
  if (!mode.isTest) {
    // Reference: https://github.com/ampedandwired/html-webpack-plugin
    // Render index.html`
    if (mode.app) {
      plugins.push(apps[mode.app]);
    } else {
      R.forEach(function(key){
        plugins.push(apps[key]);
      }, R.keys(apps))
    } 
    // plugins.push(apps['campaign-app'])
    // plugins.push(apps['plan-app'])

    plugins.push(
      // Reference: https://github.com/webpack/extract-text-webpack-plugin
      // Extract css files
      // Disabled when in test mode or not in build mode
      new ExtractTextPlugin('[name].[chunkhash].css', {disable: !mode.isProd}),

      // Add in the Common Chunk Vendor Plugin
      new webpack.optimize.CommonsChunkPlugin('vendor', mode.isProd ? 'vendor.[chunkhash].js' : 'vendor.js')
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
      new webpack.optimize.UglifyJsPlugin({
        exclude: /vendor*/
      }),

      // Copy assets from the public folder
      // Reference: https://github.com/kevlened/copy-webpack-plugin
      new CopyWebpackPlugin([{
        from: path.resolve(__dirname, '../src/public/')
      }])
    )
  }

  return plugins;

};
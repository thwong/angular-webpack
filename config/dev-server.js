/**
 * Dev server configuration
 * Reference: http://webpack.github.io/docs/configuration.html#devserver
 * Reference: http://webpack.github.io/docs/webpack-dev-server.html
 */
   
module.exports = function(mode) {
  return {
    contentBase: './src/public',
    stats: 'minimal'
  };
};
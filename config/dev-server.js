/**
 * Dev server configuration
 * Reference: http://webpack.github.io/docs/configuration.html#devserver
 * Reference: http://webpack.github.io/docs/webpack-dev-server.html
 */
   
module.exports = function(mode) {
  return {
    contentBase: './src/public',
    stats: 'minimal',
    proxy: {
      "/_ah/*" : "http://localhost:8080"
    },
    historyApiFallback: {
      index: 'index.html',
      rewrites: [
        { from: /\/campaign/, to: '/campaign/index.html' }
      ]
    }
  };
};
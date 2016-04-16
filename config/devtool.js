/**
 * Devtool
 * Reference: http://webpack.github.io/docs/configuration.html#devtool
 * Type of sourcemap to use per build type
 */
module.exports = function(mode){
  var devtool;
  if (mode.isTest) {
    devtool = 'inline-source-map';
  } else if (mode.isProd) {
    devtool = 'source-map';
  } else {
    devtool = 'eval-source-map';
  }
  return devtool;
};
// HTML LOADER
// Reference: https://github.com/webpack/raw-loader
// Allow loading html through js
module.exports = function(mode) {
  return {
    test: /\.html$/,
    loader: 'raw'
  };
}
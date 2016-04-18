// Raw HTML Loader
module.exports = function(mode) {
  return {
    test: /\.html$/,
    loader: 'raw'
  };
}
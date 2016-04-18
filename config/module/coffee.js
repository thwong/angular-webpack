// CoffeeScript loader
module.exports = function() {
  return {
    test: /\.coffee$/,
    loader: 'coffee-loader'
  };
};
// CoffeeScript loader
module.exports = function() {
  return {
    test: /\.lang\.json/,
    loaders: ['json-loader']
  };
};
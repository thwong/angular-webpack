// CoffeeScript loader
module.exports = function() {
  return {
    test: /\.translation\.json/,
    loaders: ['json-loader']
  };
};
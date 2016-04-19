// CoffeeScript loader
module.exports = function() {
  return {
    test: /\.coffee$/,
    loaders: ['ng-annotate', 'coffee-loader']
  };
};
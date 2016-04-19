// Angular HTML Loader
// First inline the HTML code using the html-loader
// Then pass the inline HTML code to ngtemplate-loader to cache it as ng-template
// This matches anything that ends with *.ng.html
module.exports = function(mode) {
  return {
    test: /\.ng\.html$/,
    loader: 'html'
  };
}
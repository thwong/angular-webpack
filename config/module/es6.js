// JS LOADER
// Reference: https://github.com/babel/babel-loader
// Transpile .js files using babel-loader
// Compiles ES6 and ES7 into ES5 code
module.exports = function() {
  return {
    test: /\.js$/,
    loader: 'babel',
    exclude: /node_modules/
  };
};
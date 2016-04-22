var nodeExternals = require('webpack-node-externals');
var mode = {
  isTest: true
}
 
module.exports = {
  target: 'node', // in order to ignore built-in modules like path, fs, etc. 
  externals: [nodeExternals()], // in order to ignore all modules in node_modules folder
  module: require('./config/module.js')(mode)
};
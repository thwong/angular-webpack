'use strict';

var mode = require('./config/env.js')(process.env);

module.exports = function () {

  var config = {};

  config.entry = require('./config/entry.js')(mode);
  config.resolve = require('./config/resolve.js')(mode);
  config.output = require('./config/output.js')(mode);
  config.devtool = require('./config/devtool.js')(mode);
  config.module = require('./config/module.js')(mode);
  config.postcss = require('./config/postcss.js')(mode);
  config.plugins = require('./config/plugins.js')(mode);
  config.devServer = require('./config/dev-server.js')(mode);

  return config;

}();

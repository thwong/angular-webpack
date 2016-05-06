module.exports = function(env) {
  var event = env.npm_lifecycle_event;
  var module = env.npm_config_module;
  var app = env.npm_config_app;
  return {
    isTest: event === 'test' || event === 'test-watch',
    isProd: event === 'build',
    module: module ? [module] : null,
    app: app ? app : null
  };
};
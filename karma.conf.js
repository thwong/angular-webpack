var specs = 'src/**/*.spec.coffee';

if(process.env.npm_config_module) {
  specs = 'src/' + process.env.npm_config_module + '/**/*.spec.coffee';
}

// Reference: http://karma-runner.github.io/0.12/config/configuration-file.html
module.exports = function karmaConfig (config) {
  config.set({
    frameworks: [
      // Reference: https://github.com/karma-runner/karma-jasmine
      // Set framework to jasmine
      'jasmine'
    ],

    reporters: [
      // Reference: https://github.com/mlex/karma-spec-reporter
      // Set reporter to print detailed results to console
      'progress'

      // Reference: https://github.com/karma-runner/karma-coverage
      // Output code coverage files
      // 'coverage'
    ],

    files: [
      // Grab all files in the app folder that contain .spec.
      'src/tests.webpack.js',
      specs
    ],

    preprocessors: {
      // Reference: http://webpack.github.io/docs/testing.html
      // Reference: https://github.com/webpack/karma-webpack
      // Convert files with webpack and load sourcemaps
      'src/tests.webpack.js': ['webpack'],
      'src/**/*.spec.coffee': ['webpack']
    },

    browsers: [
      // Run tests using PhantomJS
      'PhantomJS'
    ],

    singleRun: true,

    // Configure code coverage reporter
    coverageReporter: {
      dir: 'coverage/',
      reporters: [
        {type: 'text-summary'},
        {type: 'html'}
      ]
    },

    webpack: require('./webpack.config'),

    // Hide webpack build information from output
    webpackMiddleware: {
      noInfo: 'errors-only'
    }
  });
};

var chai, jsdom;

chai = require('chai');

jsdom = (require('jsdom')).jsdom;

var assert = require('chai').assert;

chai.should();

global.document = jsdom('<html><head><script></script></head><body></body></html>');

global.window = global.document.parentWindow;

global.navigator = window.navigator = {};

global.Node = window.Node;

require('angular/angular');

require('angular-mocks');

global.angular = window.angular;

global.inject = global.angular.mock.inject;

global.ngModule = global.angular.mock.module;

require('./date-card.module.coffee');

describe('Date Card Component', function() {
  return it('should succeeds', function() {
    return assert.equal(true, false);
  });
});
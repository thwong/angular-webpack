
// var chai, jsdom;
// chai = require('chai');
// jsdom = (require('jsdom')).jsdom;

// var assert = require('chai').assert;
// chai.should();

// global.document = jsdom('<html><head><script></script></head><body></body></html>');
// global.window = global.document.parentWindow;
// global.navigator = window.navigator = {};
// global.Node = window.Node;

// require('angular/angular');
// require('angular-mocks');

// global.angular = window.angular;
// global.inject = global.angular.mock.inject;
// global.ngModule = global.angular.mock.module;

// require('./dist/vendor.js')
// require('./dist/date-card.bundle.js');

// describe('Date Card Component', function() {
//   return it('should succeeds', function() {
//     return assert.equal(true, false);
//   });
// });

var assert = require('chai').assert;

describe('Array', function() {
  describe('#indexOf()', function () {
    it('should return -1 when the value is not present', function () {
      assert.equal(-1, [1,2,3].indexOf(5));
      assert.equal(-1, [1,2,3].indexOf(0));
    });
  });
});
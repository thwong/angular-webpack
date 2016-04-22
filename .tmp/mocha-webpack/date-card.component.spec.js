/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	var chai, jsdom;

	chai = __webpack_require__(1);

	jsdom = (__webpack_require__(2)).jsdom;

	var assert = __webpack_require__(1).assert;

	chai.should();

	global.document = jsdom('<html><head><script></script></head><body></body></html>');

	global.window = global.document.parentWindow;

	global.navigator = window.navigator = {};

	global.Node = window.Node;

	__webpack_require__(3);

	__webpack_require__(4);

	global.angular = window.angular;

	global.inject = global.angular.mock.inject;

	global.ngModule = global.angular.mock.module;

	__webpack_require__(5);

	describe('Date Card Component', function() {
	  return it('should succeeds', function() {
	    return assert.equal(true, false);
	  });
	});

/***/ },
/* 1 */
/***/ function(module, exports) {

	module.exports = require("chai");

/***/ },
/* 2 */
/***/ function(module, exports) {

	module.exports = require("jsdom");

/***/ },
/* 3 */
/***/ function(module, exports) {

	module.exports = require("angular/angular");

/***/ },
/* 4 */
/***/ function(module, exports) {

	module.exports = require("angular-mocks");

/***/ },
/* 5 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';
	angular.module('ws', []);

	angular.module('ws').component('dateCard', {
	  templateUrl: __webpack_require__(6),
	  controller: __webpack_require__(7),
	  controllerAs: 'dateCard'
	});


/***/ },
/* 6 */
/***/ function(module, exports) {

	module.exports = "This is the Date card HTML.  Module name is {{::dateCard.moduleName}}"

/***/ },
/* 7 */
/***/ function(module, exports) {

	'use strict';
	var dateCardController;

	dateCardController = function() {
	  return this.moduleName = 'WorkSpan Date Card';
	};

	module.exports = dateCardController;


/***/ }
/******/ ]);
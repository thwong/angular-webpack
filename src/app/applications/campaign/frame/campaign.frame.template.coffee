HTML             = require './campaign.frame.ng.html'
MODULE           = require '../campaign.app.module.coffee'
COMPONENT_MODULE = require '../../../components/components.module.coffee'
HEADER           = require '../../../components/app/header/app.header.component.coffee'
FOOTER           = require '../../../components/app/footer/app.footer.component.coffee'

angular.module(MODULE.name).requires.push COMPONENT_MODULE.name

module.exports = html: HTML

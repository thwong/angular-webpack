import angular from 'angular';

import '../style/campaign.css';

let campaign = () => {
  return {
    template: require('./campaign.html'),
    controller: 'CampaignCtrl',
    controllerAs: 'campaign'
  }
};

class CampaignCtrl {
  constructor() {
    this.url = 'https://workspan.com';
  }
}

const MODULE_NAME = 'campaign';

angular.module(MODULE_NAME, [])
  .directive('campaign', campaign)
  .controller('CampaignCtrl', CampaignCtrl);

export default MODULE_NAME;
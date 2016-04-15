import campaign from './campaign';

describe('campaign', () => {

  describe('CampaignCtrl', () => {
    let ctrl;

    beforeEach(() => {
      angular.mock.module(campaign);

      angular.mock.inject(($controller) => {
        ctrl = $controller('CampaignCtrl', {});
      });
    });

    it('should contain the starter url', () => {
      expect(ctrl.url).toBe('https://workspan.com');
    });
  });
});
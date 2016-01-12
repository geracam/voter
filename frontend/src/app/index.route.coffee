angular.module 'voter'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'candidates',
        url: '/candidates',
        templateUrl: 'app/views/candidates.html',
        controller: "CandidatesCtrl"

    $urlRouterProvider.otherwise '/'

  .factory "Candidate", (RailsResource) ->
    class Candidate extends RailsResource
      @configure url: "/api/candidates", name: "candidate"

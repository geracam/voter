angular.module "voter"
  .controller "CandidatesCtrl", ($scope, Candidate) ->

    Candidate.query().then((candidates) ->
      $scope.candidates = candidates
    )

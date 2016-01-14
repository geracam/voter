angular.module "voter"
  .controller "CandidatesCtrl", ($scope, Candidate) ->

    Candidate.query().then((candidates) ->
      $scope.candidates = candidates
      console.log candidates
    )

    $scope.vote = (id) ->
      Candidate.get(id).then((candidate) ->
        candidate.tally = candidate.tally +=1
        candidate.update()
      )

    $scope.show_votes = (id) ->
      Candidate.show_votes(id).then((votes) ->
        console.log votes
      )

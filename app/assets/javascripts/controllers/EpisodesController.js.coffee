App.controller 'EpisodesController', ['$scope', 'Episode', ($scope, Episode) ->
  $scope.episodes      = Episode.query()
  $scope.selectEpisode = $scope.episodes[0]
  $scope.selectedRow   = 0

  $scope.selectEpisode = (episode, row) ->
    $scope.selectedEpisode = episode
    $scope.selectedRow = row

]

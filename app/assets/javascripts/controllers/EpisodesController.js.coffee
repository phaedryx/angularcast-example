App.controller 'EpisodesController', ['$scope', 'Episode', ($scope, Episode) ->
  $scope.episodes        = Episode.query()
  $scope.selectedEpisode = $scope.episodes[0]
  $scope.selectedRow     = 0

  $scope.selectEpisode = (episode, row) ->
    $scope.selectedEpisode = episode
    $scope.selectedRow = row
]

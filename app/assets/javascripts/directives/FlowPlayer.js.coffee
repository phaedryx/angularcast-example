App.directive 'flowPlayer', ->
  (scope, element, attrs) ->
    scope.$watch 'selectedEpisode', (episode) ->
      if episode
        element.flowplayer
          playlist: [[mp4: episode.video_url]]
          ratio: 9 / 14

App.factory 'Episode', ['$resource', ($resource) ->
  $resource '/api/episodes/:id', id: '@id'
]

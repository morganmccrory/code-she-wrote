angular.module('codeSheWrote')
  .factory('posts', ['$http', '$log', '$compile', function($http, $log, $compile) {
    var o = {
      posts: []
    };

    o.getAll = function() {
      return $http.get('/posts.json').success(function(data){
         console.log("SUCCESSFUL RETURN IN GETALL");
         console.log(data);
        angular.copy(data, o.posts);
      });
    };

    o.upvote = function(post) {
      $http.put('/posts/' + post.id + '/upvote')
        .success( function() {
          post.likes += 1;
          post.liked = 'unlike';
        })
        .error( function() {
          $log.error('There was an error upvoting this post.');
        });
    };

    o.downvote = function(post) {
      $http.put('/posts/' + post.id + '/downvote')
        .success( function() {
          post.likes -= 1;
          post.liked = 'likes';
        })
        .error( function() {
          $log.error('There was an error downvoting this post.');
        });
    };

    o.addComment = function(post, comment) {
      $http.post('/comments', comment)
        .success( function(comment) {
          post.comments.push(comment);
        })
        .error(function () {
          $log.error('There was an error posting your comment.');
        });
    };

    return o;

  }])
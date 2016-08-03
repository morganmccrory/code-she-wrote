angular.module('codeSheWrote')
    .controller('MainCtrl', ['$scope', '$uibModal', '$sce', 'posts', function ($scope, $uibModal, $sce, posts) {

        posts.getAll();
        $scope.posts = posts.posts;
        console.log("This is $scope.posts");
        console.log($scope.posts);
        $scope.comment = {};

        $scope.updateLikes = function(post) {
            if (post.liked == 'likes') {
              posts.upvote(post);
            } else {
              posts.downvote(post);
            }
        };

        $scope.openComments = function(post) {
            if(post.showComments == false) {
              post.showComments = true;
            } else {
              post.showComments = false;
            }
        };

        $scope.addComment = function(post) {
            if($scope.comment.body === '') { return; }
            $scope.comment.post_id = post.id
            posts.addComment(post, $scope.comment);
            $scope.comment = {};
        };

        $scope.share = function(post) {
          var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            template: '<div class="share"><a href="https://twitter.com/share" class="twitter-share-button">Tweet</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\'://platform.twitter.com/widgets.js\';fjs.parentNode.insertBefore(js,fjs);}}(document, \'script\', \'twitter-wjs\');</script><iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Fcodeshewrote.io&layout=button&mobile_iframe=true&width=59&height=20&appId" width="59" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe><script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: en_US</script><script type="IN/Share" data-url="http://codeshewrote.io"></script></div>',
          });
        };

        $scope.renderHtml = function(html_code)
            {
                return $sce.trustAsHtml(html_code);
            };
    }]);
module PostsHelper
  def is_post_author?(current_user, post_id)
    post = Post.find(post_id)

    if post.user_id === current_user.id
      return true
    end
    return false
  end
end

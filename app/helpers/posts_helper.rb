module PostsHelper
  # retrieves first photo from the post, if any
  def retrieve_photo(post)
    /<img.*?src=\"(.+?)\"/.match(post.body)[1] unless /<img.*?src=\"(.+?)\"/.match(post.body).nil?
  end

end

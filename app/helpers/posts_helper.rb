module PostsHelper
  # retrieves first photo from the post, if any
  def retrieve_photo(post)
    /<img.*?src=\"(.+?)\"/.match(post.body)[1] unless /<img.*?src=\"(.+?)\"/.match(post.body).nil?
  end

  def display_tags(post)
    raw post.tag_list.map { |t| link_to t, tag_path(t)}.join(', ')
  end
end

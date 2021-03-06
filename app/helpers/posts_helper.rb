module PostsHelper
  ANONYMOUS_USER = 'Anonymous user'

  def show_author(resource)
    user = resource.user.email if resource.user
    "Author: #{user || ANONYMOUS_USER}"
  end
end

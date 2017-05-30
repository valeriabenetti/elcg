module TestsHelper
  def favorited_class(test, user)
    Favorite.find_by(test: test, user: user) ? "favorited" : ""
  end
end

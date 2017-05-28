module TestsHelper
  def favorited_class(test, user)
    Star.find_by(test: test, user: user) ? "favorited" : ""
  end
end

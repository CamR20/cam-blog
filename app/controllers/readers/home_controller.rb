module Readers
  class HomeController < ReadersController
    def index
      @posts = Post.published
    end
  end
end

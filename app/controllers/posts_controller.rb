class PostsController < ApplicationController
  def index
      @posts = Post.all
      @posts.find_each.with_index do |post, index|
          if index % 5 == 0
              post.title = "SPAM"
              post.save
          end
      end
  end

  def show
  end

  def new
  end

  def edit
  end
end

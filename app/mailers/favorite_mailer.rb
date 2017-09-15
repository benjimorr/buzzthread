class FavoriteMailer < ApplicationMailer
    default from: "benmorrison0@gmail.com"

    def new_comment(user, post, comment)
        headers["Message-ID"] = "<comments/#{comment.id}@buzzthread.example>"
        headers["In-Reply-To"] = "<post/#{post.id}@buzzthread.example>"
        headers["References"] = "<post/#{post.id}@buzzthread.example>"

        @user = user
        @post = post
        @comment = comment

        mail(to: user.email, subject: "New comment on #{post.title}")
    end
end

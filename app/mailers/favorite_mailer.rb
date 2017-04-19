class FavoriteMailer < ApplicationMailer
  default from: 'aizazkj@gmail.com'

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@infinite-headland-84041.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@infinite-headland-84041.example>"
    headers["References"] = "<post/#{post.id}@infinite-headland-84041.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end

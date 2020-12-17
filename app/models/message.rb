class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  acts_as_notifiable :users, 
  targets: ->(message, key) {
    ([message.chatroom.user] + comment.article.reload.commented_users.to_a - [comment.user]).uniq
  },
  notifiable_path: :article_notifiable_path

end

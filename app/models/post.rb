class Post < ActiveRecord::Base
  attr_accessible :author, :body, :title
  validates :author, presence: true
  validates :body, length: { maximum: 400, too_long: "Sami -_-, max length is %{counts}" }
  validates :title, presence:true, length: { maximum: 60, too_long: "Sami -_-, max length is %{counts}" }

end

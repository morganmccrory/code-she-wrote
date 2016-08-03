class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :categories

  def as_json(options = {})
    super(options.merge(include: [:comments, :categories]))
  end
end

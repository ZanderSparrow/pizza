class Video < ActiveRecord::Base
  belongs_to :user
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  validates :url, presence: true, format: YT_LINK_FORMAT
end

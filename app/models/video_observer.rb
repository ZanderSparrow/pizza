class VideoObserver < ActiveRecord::Observer
  def before_save(resource)
    video = Yt::Video.new url: resource.url
    resource.video_id = video.id
    resource.title = video.title
    resource.description = video.description
    resource.tags = video.tags
    resource.thumbnail = video.thumbnail
  rescue Yt::Errors::NoItems
    resource.title = ''
  end
end
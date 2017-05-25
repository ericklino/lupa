module ApplicationHelper
  def slides
    Slide.order('id desc')
  end
end

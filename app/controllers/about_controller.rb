class AboutController < ApplicationController
  def index
    @about = About.first

    @page_title = "Quem somos - Skeleton"
  end
end

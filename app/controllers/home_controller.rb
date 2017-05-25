class HomeController < ApplicationController
<<<<<<< HEAD
  def index
    @page_title = 'Skeleton'    
  end
=======

  def index
  end


  def test
     render json: Mark.where(name: "LG").group(:name).count
  end


>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
end

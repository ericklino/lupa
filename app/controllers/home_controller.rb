class HomeController < ApplicationController

  def index
  end


  def test
     render json: Mark.where(name: "LG").group(:name).count
  end


end

class ReportsController < ApplicationController
<<<<<<< HEAD
=======

  def evaluation
    render layout: false
  end

>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
  def index
    if params[:search]
      @device = Device.search(params[:search])
    else
      @device = Device.all.order :id
    end
  end

  def show
    @device =  Device.find params[:id]
  end
<<<<<<< HEAD
=======


>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
end

class DevicesController < ApplicationController
<<<<<<< HEAD
  def index
     if params[:search]
       @device = Device.search(params[:search])
     else
       @device = Device.order :id
     end
   end
=======

  def index_device
    if params[:search]
      @device = Device.search(params[:search])
    else
      @device = Device.order :id
    end
  end


>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
end

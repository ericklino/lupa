class DevicesController < ApplicationController

  def index_device
    if params[:search]
      @device = Device.search(params[:search])
    else
      @device = Device.order :id
    end
  end


end

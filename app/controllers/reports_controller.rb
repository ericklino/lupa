class ReportsController < ApplicationController

  def evaluation
    render layout: false
  end

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

end

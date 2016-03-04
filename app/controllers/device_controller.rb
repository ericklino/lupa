class DeviceController < ApplicationController
  def index_device
  @devices = Device.all
  end
end

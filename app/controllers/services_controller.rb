class ServicesController < ApplicationController
  def building
  end

  def interior
    @service_file = ServiceFile.first
  end

  def planning
  end

  def landscape
  end

  def vetting
  end

  def consluting
  end

  def vrtech
  end
end

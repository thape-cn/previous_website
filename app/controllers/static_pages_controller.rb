class StaticPagesController < ApplicationController
  def home
  end

  def homephone
    render :layout => 'blackapp'
  end

  def homes
    @home = Home.first
    render :layout => 'blackapp'
  end

  def about_us
    @about = About.first
  end

  def news_list
  end

  def info
  end

  def management
  end

  def personal
  end

  def cases
  end

  def case
  end

  def service
  end

  def privacy
  end

  def disclaimer
  end

  def statement
  end

  def banner
  end
end

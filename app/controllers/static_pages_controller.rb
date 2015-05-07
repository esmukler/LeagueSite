class StaticPagesController < ApplicationController

  def root
    render 'root'
  end

  def stats
    render 'stats'
  end

  def history
    render 'history'
  end

  def media
    render 'media'
  end

  def contact
    render 'contact'
  end

  def admin
    render 'admin'
  end

end

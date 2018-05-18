class PagesController < ApplicationController
  def home
    @movement = Movement.all.order("created_at DESC").limit(5)
  end

  def about
  end

  def terms
  end

  def privacy
  end

  def support
  end
end

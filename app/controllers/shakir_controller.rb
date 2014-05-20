class ShakirController < ApplicationController
  def index
  	@title = "Main Index Page"
  end

  def events
  	@title = "Events"
  end

  def shop
  	@title = "Shop"
  end

  def discussion
  	@title = "Discussion"
  end
end

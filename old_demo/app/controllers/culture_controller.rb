class CultureController < ApplicationController
  
  layout 'application'

  def index
  end

  def israel
  	@id = params['id'].to_s
  end

  def palestine
  	@id = params['id'].to_s
  end
end

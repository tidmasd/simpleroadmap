class PagesController < ApplicationController
  
  skip_before_action :authenticate_user!

  def product
  end

  def pricing
  end

  def signin
  end
end

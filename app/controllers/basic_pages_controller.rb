class BasicPagesController < ApplicationController
  layout "application"
  skip_before_action :authenticate_user!, :only => [:welcome]

  def welcome
  end

  def page1
  end

end

class BasicPagesController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:welcome]

  def welcome
  end

  def page1
  end

end

class HomeController < ApplicationController
  def index
    @locations = Location.all
    @branches = Branch.all
  end
end

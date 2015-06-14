class HomeController < ApplicationController
  def index
    @branches  = Branch.all
    @locations  = Location.all
    @wek_programs = WeekProgram.all
    
    @locations = Location.all
      @week_programs = WeekProgram.all
      
       @products = Product.all
     
        
        
  end
 
end

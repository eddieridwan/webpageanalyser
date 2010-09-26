class DashboardController < ApplicationController

  def show
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

end
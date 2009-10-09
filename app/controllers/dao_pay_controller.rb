class DaoPayController < ApplicationController
  
  def index
    respond_to do |format|
      format.html
      format.xml  { render :xml => 'OK' }
    end
  end
  
  def new
    respond_to do |format|
      format.html
      format.xml  { render :xml => 'OK' }
    end
  end
end

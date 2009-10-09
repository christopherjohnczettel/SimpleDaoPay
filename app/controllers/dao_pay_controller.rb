class DaoPayController < ApplicationController
  
  def index
    @myParams = DaoPayIframeParameter.new
    @myParams.price = 20.22
    @myParams.orderno = 10016969

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

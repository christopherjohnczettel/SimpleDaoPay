class DaoPayController < ApplicationController
  
  def index
    @myParams = DaoPayIframeParameter.new
    
    @myParams.appcode = DAOPAY_APP_CONFIG['appcode']
    @myParams.price = 20.22
    @myParams.orderno = 10016969
    
    @myParams.save!
    
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

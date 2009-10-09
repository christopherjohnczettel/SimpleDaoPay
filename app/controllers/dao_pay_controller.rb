class DaoPayController < ApplicationController
  
  def index
  end
  
  def new
    @myParams = DaoPayPaymentRequest.new
    @myParams.price = rand(10) + 1
    @myParams.successurl = "http://localhost:3000/DaoPay/show"
    #@myParams.orderno = "10026969" + (rand(9)+1).to_s
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => 'OK' }
    end
  end
  
  def show
    @response = params
  end
  
  def status_update
  end
end

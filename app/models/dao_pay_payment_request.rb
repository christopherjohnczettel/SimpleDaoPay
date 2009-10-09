class DaoPayPaymentRequest < ActiveRecord::BaseWithoutTable
  require 'cgi'
  
  
  column :appcode,      :integer  #5 digit code of website 
  column :price,        :float    #price of respective product
  column :currency,     :string   #3 digit currency
  column :method,       :string   #call/sms/both
  column :country,      :string   #2 digit ISO code, e.g. DE, AT, US
  column :successurl,   :string   #backlink url after successfull payment
  column :affiliate,    :string   #affiliate code, used to assign payment to affiliate
  column :style,        :string   #code for choosing style of DaoPay mask
  column :mcx,          :string   #specifies if upselling should be enabled
  column :orderno,      :string   #internal order number to be displayed
  column :gateway_url,  :string   #url of DaoPay gateway
  #column :user_defined           #any other user defined attributes that will be passed through DaoPay
  
  
  validates_presence_of :appcode
  validates_presence_of :price
  
  validates_numericality_of :appcode
  validates_numericality_of :price
  validates_numericality_of :affiliate, :allow_nil => true
  
  validates_inclusion_of  :appcode,   :in => 0...999999
  
  validates_length_of :currency,  :is => 3, :allow_nil => true
  validates_length_of :country,   :is => 2, :allow_nil => true
  
  validates_inclusion_of :method, 
                         :in => %w( call sms both ), 
                         :message => "method {{value}} is not supported (try call/sms/both)",
                         :allow_nil => true
  
  def initialize
    super
    self.attributes = DAOPAY_APP_CONFIG
  end
  
  def payment_url
    self.save!
    elements = []

    self.attributes.each do |key, value|
      unless (value.nil? || key == 'gateway_url')
            elements << "#{CGI.escape(key)}=#{CGI.escape(value.to_s)}"
      end
    end

    self.gateway_url + "?" +  elements.join('&')
  end
end
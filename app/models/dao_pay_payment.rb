require 'aasm'
class DaoPayPayment < ActiveRecord::Base
  include AASM
  
  
  
  
  
  validates_uniqueness_of :tid
  
  
  
  
  aasm_column :state 
  
  aasm_state :pending
  aasm_state :connected
  aasm_state :partial
  aasm_state :ok
  aasm_state :not_ok
  
  
  aasm_event :user_connected do
    transitions :from => :pending, :to => :connected
  end
  
  aasm_event :payment_partially_cleared do
    transitions :from => :pending, :to => :partial
  end
  
  aasm_event :payment_cleared do
    transitions :from => [:pending, :connected, :partial], :to => :ok 
  end
  
  aasm_event :payment_failed do
    transitions :from => [:pending, :connected, :partial], :to => :not_ok
  end
  
end

# == Schema Info
# Schema version: 20091009144633
#
# Table name: dao_pay_payments
#
#  id           :integer         not null, primary key
#  user_id      :integer
#  appcode      :integer
#  calltime     :integer
#  countrycode  :string(255)
#  currency     :string(255)
#  duration     :integer
#  mcx          :boolean
#  mcxcurrency  :string(255)
#  mcxid        :string(255)
#  mcxtariff    :float
#  mcxtimeout   :integer
#  origin       :string(255)
#  paid         :float
#  payout       :float
#  prodcurrency :string(255)
#  prodprice    :float
#  state        :string(255)     default("pending")
#  tid          :integer
#  created_at   :datetime
#  updated_at   :datetime
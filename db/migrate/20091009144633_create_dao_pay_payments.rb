class CreateDaoPayPayments < ActiveRecord::Migration
  def self.up
    create_table :dao_pay_payments do |t|
      t.integer       :tid  #Transaction ID / order ID         
      t.integer       :appcode  #Application Code
      t.integer       :user_id  #user_id of current_user
      t.string        :state,  :null => :no, :default => 'pending'
      
      t.integer       :duration
      t.integer       :calltime
      t.string        :origin
      t.string        :countrycode
      
      t.float         :prodprice
      t.string        :prodcurrency
      
      t.float         :paid
      t.string        :currency
      
      t.float         :payout
      
      #mulitcall stuff
      t.boolean       :mcx
      t.string        :mcxid
      t.integer       :mcxtimeout
      t.float         :mcxtariff
      t.string        :mcxcurrency
      
      t.timestamps
    end
    add_index :dao_pay_payments, :tid, :unique => true
  end

  def self.down
    drop_table :dao_pay_payments
  end
end

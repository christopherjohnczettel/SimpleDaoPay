require 'test_helper'

class DaoPayPaymentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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
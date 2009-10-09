module DaoPayHelper
  
  def daopay_iframe(param)
    "<iframe height=\"550\" width=\"415\" marginheight=\"0\" marginwidth=\"0\" 
    frameborder=\"0\" src=\" #{param.payment_url}\"> 
    </iframe>"
  end
end

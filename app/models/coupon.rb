class Coupon < ActiveRecord::Base
	def to_s
		"Coupon for:" + self.store + ". Code:" + self.coupon_code
	end
end
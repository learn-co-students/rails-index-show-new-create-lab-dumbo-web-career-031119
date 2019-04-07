class CreateCoupons < ActiveRecord::Migration
    def change
        create_table :coupons do |coupon|
            coupon.string :coupon_code
            coupon.string :store
        end
    end
end
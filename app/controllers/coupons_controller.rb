class CouponsController < ApplicationController

    before_action :get_coupon_by_id, only: [:edit, :update, :show, :destory]
    
    def index
        @coupons = Coupon.all
    end

    def show
        get_coupon_by_id
    end

    def new
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to @coupon
    end
    
    private

    def get_coupon_by_id
        @coupon = Coupon.find(params[:id])
      end

      def coupon_params
        params.require(:coupon).permit(:store, :coupon_code)
      end
    
end

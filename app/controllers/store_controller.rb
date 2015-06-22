class StoreController < ApplicationController
	#before_filter :set_i18n_locale_form_params
	skip_before_filter :authorize
  def index
  	 #@products = Product.paginate(:page => params[:page], :per_page => 3)
  	
  	if params[:set_locale]
        redirect_to store_path(:locale => params[:set_locale])
    else
        @products = Product.all
        @cart = current_cart
    end
  end

end

class HomeController < ApplicationController
  skip_authorization_check :only => [:index]
 
  def index
    # code = params[:code]
    #logger.debug params

    #render :text => "<pre>"+request.env["omniauth.auth"].to_json+"</pre>"
  end

end

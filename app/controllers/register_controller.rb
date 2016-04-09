class RegisterController < ApplicationController
  #AVIUD CORS CHECK
  skip_before_filter :verify_authenticity_token
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
   headers['Access-Control-Allow-Origin'] = '*'
   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
   headers['Access-Control-Max-Age'] = "1728000"
  end

 # If this is a preflight OPTIONS request, then short-circuit the
 # request, return only the necessary headers and return an empty
 # text/plain.

  def cors_preflight_check
   headers['Access-Control-Allow-Origin'] = '*'
   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
   headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
   headers['Access-Control-Max-Age'] = '1728000'
  end

  # Here we will create our visitor
  def create
    @user = User.find_or_create_by(userid: params[:userid])
    @page = Page.create(page: params[:page], user: @user)
    if @user.save
      render status: 201, json: @user
    else
      render status: 422, json: { errors: @user.errors }
    end
  end

  # add Email
  def update
    @user = User.find_or_create_by(userid: params[:userid])
    @user.email = params[:email]
    if @user.save
        render status: 201, json: @user
      else
        render status: 422, json: { errors: @user.errors }
      end
    end

    protected
    def user_params
      params.require(:user).permit(:userid,:email)
    end

    def page_params
      params.require(:page).permit(:page)
    end
end

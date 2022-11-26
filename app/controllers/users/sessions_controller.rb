class Users::SessionsController < DeviseTokenAuth::SessionsController
  respond_to :json

  protected 
  def render_create_success
    render json: {
      status: :success,
      data: current_user
    }
  end
end
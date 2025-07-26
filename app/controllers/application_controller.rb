class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: 'Resource not found.' }, status: :not_found
  end

  rescue_from ActionController::ParameterMissing do |exception|
    render json: { error: exception.message }, status: :bad_request
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    render json: { message: exception.message }, status: :unprocessable_content
  end
end

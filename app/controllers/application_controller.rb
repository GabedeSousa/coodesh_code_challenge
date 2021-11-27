class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def render_error(message: nil, fields: nil, status: :unprocessable_entity)
    errors = {}
    errors['fields'] = fields if fields.present?
    errors['message'] = fields if message.present?
    render json: { errors: errors }, status: status
  end
end

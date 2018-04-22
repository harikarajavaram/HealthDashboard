class ApplicationController < ActionController::API
  include ActionController::Helpers
  include ActionController::Flash
  include ActionController::MimeResponds
	respond_to :json
end

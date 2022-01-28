module api
  module v1
    class Application < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken

    end
  end
end

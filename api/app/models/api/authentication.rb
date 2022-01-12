module Api::Authentication < ApplicationRecord
  namespace :api, format: 'json' do
    resource :authentication, only: %i[create]
  end
end

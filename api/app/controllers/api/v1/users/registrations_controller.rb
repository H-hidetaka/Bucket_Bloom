module api
  module v1
    class  RegistrationsController < ApplicationController
      before_action :ensure_normal_user, only: %i[update destroy]

      def create
        redirect_to root_path, alert: '更新、削除はできません'
      end
    end
  end
end

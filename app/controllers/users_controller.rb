class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create, :show]

    def show
        @user=User.find(params[:id])
    end
end

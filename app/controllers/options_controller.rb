class OptionsController < ApplicationController
    before_action :set_option, only: [:show, :update, :destroy]

    def index
        @options = Option.all

        render json: @options
    end

    def show
        render json: @option
    end

    def update
        if @option.update(option_params)
        render json: @option
        else
        render json: @option.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @option.destroy
    end

    def create
        @option = Option.new(option_params)

        if @option.save
          render json: @option, status: :created, location: @option
        else
          render json: @option.errors, status: :unprocessable_entity
        end

    end

    private
    def set_option
      @option = Option.find(params[:id])
    end

    def option_params
      params.require(:option).permit(:title, :question_id)
    end

end

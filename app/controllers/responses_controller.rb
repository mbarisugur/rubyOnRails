class ResponsesController < ApplicationController
    before_action :set_response, only: [:show, :update, :destroy]

    def index
        @responses = Response.all

        render json: @responses
    end

    def show
        render json: @response
    end

    def update
        if @response.update(response_params)
        render json: @response
        else
        render json: @response.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @response.destroy
    end

    def create
        @response = Response.new(response_params)

        if @response.save
          render json: @response, status: :created, location: @response
        else
          render json: @response.errors, status: :unprocessable_entity
        end

    end

    private
    def set_response
      @response = Response.find(params[:id])
    end

    def response_params
      params.require(:response).permit(:feedback_id, :question_id, :option_id, :body)
    end

end

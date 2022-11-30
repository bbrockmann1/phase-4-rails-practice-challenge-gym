class ClientsController < ApplicationController
    def show
        client = Client.find_by(id: params[:id])
        if gym
            render json: client, status: :ok
        else render json: {error: "Client not found."}, status: :not_found
    end
    end
end

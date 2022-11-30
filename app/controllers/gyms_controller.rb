class GymsController < ApplicationController

    def show
        gym = Gym.find_by(id: params[:id])
            if gym
                render json: gym, status: :ok
            else render json: {error: "Gym not found."}, status: :not_found
        end
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
            if gym
                destroy_membership
                gym.destroy
                head :no_content, status: :ok
            else render json: {"error": "Gym not found."}, status: not_found
        end
    end

    private
    def destroy_membership
        membership = Membership.find_by(gym_id: params[:id])
        membership.destroy
    end
end

class MembershipsController < ApplicationController
    
    def create
        membership = Membership.create!(membership_params)
    end

    private
    def membership_params
        params.permit(:gym_id, :cllient_id, :charge)
    end
end

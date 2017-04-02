class HomeController < ApplicationController
    def index
        @number_list = (1..45).to_a
        @number_pick = @number_list.sample(7)
        @number_origin = @number_pick[0..5].sort
        @number_bonus = @number_pick - @number_origin
        @number_pick = @number_list.sample(6).sort
    end
end

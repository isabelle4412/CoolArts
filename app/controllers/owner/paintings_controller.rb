module Owner
    class PaintingsController < ApplicationController
        def index
            @owner_paintings = current_user.paintings
        end

    end

end


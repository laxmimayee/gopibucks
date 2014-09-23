class WebnairsController < ApplicationController
    before_action :set_webnair, only: [:show, :edit, :update, :destroy]
    def new
        @webnair = Webnair.new
    end

    def create
        @webnair = Webnair.new( webnairs_params )
              if @webnair.save
            flash[:notice] = "Webnair created successfully!"
        else
            flash[:error] = "Webnair not created!"
        end
        redirect_to root_path
    end

    def edit
        @webnair = Webnair.find(params[:id])
    end

    def update
        respond_to do |format|
            if @webnair.update(webnairs_params)
                format.html { redirect_to @webnair, notice: 'Webnair was successfully updated.' }
                format.json { render :show, status: :ok, location: @webnair }
            else
                format.html { render :edit }
                format.json { render json: @webnair.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
    end

    def index
    # @webnairs = Webnair.all
    end

    def destroy
        @webnair.destroy
        respond_to do |format|
            format.html { redirect_to root_url, notice: 'Webnair was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    def set_webnair
        @webnair = Webnair.find(params[:id])
    end
    def webnairs_params
        params.require(:webnair).permit(:user_id, :ppt, :title, :description, :avarar, :choice)
    end

end

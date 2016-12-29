class GuestEducatorsController < ApplicationController
  before_action :set_guest_educator, only: [:show, :edit, :update, :destroy, :vote]

  # GET /guest_educators
  # GET /guest_educators.json
  def index
    @guest_educators = GuestEducator.all
  end

  # GET /guest_educators/1
  # GET /guest_educators/1.json
  def show
  end

  # GET /guest_educators/new
  def new
    @guest_educator = GuestEducator.new
  end

  # GET /guest_educators/1/edit
  def edit
  end

  # POST /guest_educators
  # POST /guest_educators.json
  def create
    @guest_educator = GuestEducator.new(guest_educator_params)

    respond_to do |format|
      if @guest_educator.save
        format.html { redirect_to @guest_educator, notice: 'Guest educator was successfully created.' }
        format.json { render :show, status: :created, location: @guest_educator }
      else
        format.html { render :new }
        format.json { render json: @guest_educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_educators/1
  # PATCH/PUT /guest_educators/1.json
  def update
    respond_to do |format|
      if @guest_educator.update(guest_educator_params)
        format.html { redirect_to @guest_educator, notice: 'Guest educator was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_educator }
      else
        format.html { render :edit }
        format.json { render json: @guest_educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_educators/1
  # DELETE /guest_educators/1.json
  def destroy
    @guest_educator.destroy
    respond_to do |format|
      format.html { redirect_to guest_educators_url, notice: 'Guest educator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @guest_educator.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_educator
      @guest_educator = GuestEducator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_educator_params
      params.require(:guest_educator).permit(:email, :name, :class_session_id)
    end
end

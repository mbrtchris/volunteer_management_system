class ClassSessionsController < ApplicationController
  before_action :set_class_session, only: [:show, :edit, :update, :destroy, :vote]

  # GET /class_sessions
  # GET /class_sessions.json
  def index
    @class_sessions = ClassSession.all
  end

  # GET /class_sessions/1
  # GET /class_sessions/1.json
  def show
  end

  # GET /class_sessions/new
  def new
    @class_session = ClassSession.new
  end

  # GET /class_sessions/1/edit
  def edit
  end

  # POST /class_sessions
  # POST /class_sessions.json
  def create
    @class_session = ClassSession.new(class_session_params)

    respond_to do |format|
      if @class_session.save
        format.html { redirect_to @class_session, notice: 'Class session was successfully created.' }
        format.json { render :show, status: :created, location: @class_session }
      else
        format.html { render :new }
        format.json { render json: @class_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_sessions/1
  # PATCH/PUT /class_sessions/1.json
  def update
    respond_to do |format|
      if @class_session.update(class_session_params)
        format.html { redirect_to @class_session, notice: 'Class session was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_session }
      else
        format.html { render :edit }
        format.json { render json: @class_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_sessions/1
  # DELETE /class_sessions/1.json
  def destroy
    @class_session.destroy
    respond_to do |format|
      format.html { redirect_to class_sessions_url, notice: 'Class session was successfully destroyed.' }
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

    @class_session.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_session
      @class_session = ClassSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_session_params
      params.require(:class_session).permit(:subject, :notes, :number_of_students, :start_time, :end_time, :room)
    end
end

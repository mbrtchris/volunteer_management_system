class TrainingRecordsController < ApplicationController
  before_action :set_training_record, only: [:show, :edit, :update, :destroy, :vote]

  # GET /training_records
  # GET /training_records.json
  def index
    @training_records = TrainingRecord.all
  end

  # GET /training_records/1
  # GET /training_records/1.json
  def show
  end

  # GET /training_records/new
  def new
    @training_record = TrainingRecord.new
  end

  # GET /training_records/1/edit
  def edit
  end

  # POST /training_records
  # POST /training_records.json
  def create
    @training_record = TrainingRecord.new(training_record_params)

    respond_to do |format|
      if @training_record.save
        format.html { redirect_to @training_record, notice: 'Training record was successfully created.' }
        format.json { render :show, status: :created, location: @training_record }
      else
        format.html { render :new }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_records/1
  # PATCH/PUT /training_records/1.json
  def update
    respond_to do |format|
      if @training_record.update(training_record_params)
        format.html { redirect_to @training_record, notice: 'Training record was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_record }
      else
        format.html { render :edit }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_records/1
  # DELETE /training_records/1.json
  def destroy
    @training_record.destroy
    respond_to do |format|
      format.html { redirect_to training_records_url, notice: 'Training record was successfully destroyed.' }
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

    @training_record.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_record
      @training_record = TrainingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_record_params
      params.require(:training_record).permit(:profile_id, :type, :training_id, :has_passed, :expires_at)
    end
end

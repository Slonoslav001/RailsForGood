class VolunteersController < ApplicationController
  before_action :set_volunteer, only: %i[ show edit update destroy ]

  # GET /volunteers/1 or /volunteers/1.json
  def show
  end

  # GET /volunteers/new
  def new
    @volunteer = Volunteer.new
  end

  # GET /volunteers/1/edit
  def edit
  end

  # POST /volunteers or /volunteers.json
  def create
    @volunteer = Volunteer.new(volunteer_params)

    respond_to do |format|
      if @volunteer.save
        MagicLinkMailer.with(volunteer: @volunteer).welcome_email.deliver_later
        format.html { redirect_to @volunteer, notice: "Účet dobrovolníka byl úspěšně vytvořen." }
        format.json { render :show, status: :created, location: @volunteer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteers/1 or /volunteers/1.json
  def update
    respond_to do |format|
      if @volunteer.update(volunteer_params)
        format.html { redirect_to @volunteer, notice: "Účet dobrovolníka byl úspěšně upraven." }
        format.json { render :show, status: :ok, location: @volunteer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def volunteer_params
      params.require(:volunteer).permit(:Příjmení, :Jméno, :Mail, :Telefon)
    end
end

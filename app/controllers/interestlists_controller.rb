class InterestlistsController < ApplicationController
  before_action :set_interestlist, only: [:show, :edit, :update, :destroy]

  # GET /interestlists
  # GET /interestlists.json
  def index
    @interestlists = Interestlist.all
  end

  # GET /interestlists/1
  # GET /interestlists/1.json
  def show
  end

  # GET /interestlists/new
  def new
    @interestlist = Interestlist.new
  end

  # GET /interestlists/1/edit
  def edit
  end

  # POST /interestlists
  # POST /interestlists.json
  def create
    @interestlist = Interestlist.new(interestlist_params)

    respond_to do |format|
      if @interestlist.save
        format.html { redirect_to @interestlist, notice: 'Interestlist was successfully created.' }
        format.json { render :show, status: :created, location: @interestlist }
      else
        format.html { render :new }
        format.json { render json: @interestlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interestlists/1
  # PATCH/PUT /interestlists/1.json
  def update
    respond_to do |format|
      if @interestlist.update(interestlist_params)
        format.html { redirect_to @interestlist, notice: 'Interestlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @interestlist }
      else
        format.html { render :edit }
        format.json { render json: @interestlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interestlists/1
  # DELETE /interestlists/1.json
  def destroy
    @interestlist.destroy
    respond_to do |format|
      format.html { redirect_to interestlists_url, notice: 'Interestlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interestlist
      @interestlist = Interestlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interestlist_params
      params.require(:interestlist).permit(:user_id, :project_id, :interest, :interesttype)
    end
end

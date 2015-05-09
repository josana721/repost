class Try1sController < ApplicationController
  before_action :set_try1, only: [:show, :edit, :update, :destroy]

  # GET /try1s
  # GET /try1s.json
  def index
    @try1s = Try1.all
  end

  # GET /try1s/1
  # GET /try1s/1.json
  def show
  end

  # GET /try1s/new
  def new
    @try1 = Try1.new
  end

  # GET /try1s/1/edit
  def edit
  end

  # POST /try1s
  # POST /try1s.json
  def create
    @try1 = Try1.new(try1_params)

    respond_to do |format|
      if @try1.save
        format.html { redirect_to @try1, notice: 'Try1 was successfully created.' }
        format.json { render :show, status: :created, location: @try1 }
      else
        format.html { render :new }
        format.json { render json: @try1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /try1s/1
  # PATCH/PUT /try1s/1.json
  def update
    respond_to do |format|
      if @try1.update(try1_params)
        format.html { redirect_to @try1, notice: 'Try1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @try1 }
      else
        format.html { render :edit }
        format.json { render json: @try1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /try1s/1
  # DELETE /try1s/1.json
  def destroy
    @try1.destroy
    respond_to do |format|
      format.html { redirect_to try1s_url, notice: 'Try1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_try1
      @try1 = Try1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def try1_params
      params.require(:try1).permit(:name, :cpnumber, :address)
    end
end

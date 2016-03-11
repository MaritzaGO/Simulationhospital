class ChildrenReceivingsController < ApplicationController
  before_action :set_children_receiving, only: [:show, :edit, :update, :destroy]

  # GET /children_receivings
  # GET /children_receivings.json
  def index
    @children_receivings = ChildrenReceiving.all
  end

  # GET /children_receivings/1
  # GET /children_receivings/1.json
  def show
  end

  # GET /children_receivings/new
  def new
    @children_receiving = ChildrenReceiving.new
  end

  # GET /children_receivings/1/edit
  def edit
  end

  # POST /children_receivings
  # POST /children_receivings.json
  def create
    @children_receiving = ChildrenReceiving.new(children_receiving_params)

    respond_to do |format|
      if @children_receiving.save
        format.html { redirect_to @children_receiving, notice: 'Children receiving was successfully created.' }
        format.json { render :show, status: :created, location: @children_receiving }
      else
        format.html { render :new }
        format.json { render json: @children_receiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children_receivings/1
  # PATCH/PUT /children_receivings/1.json
  def update
    respond_to do |format|
      if @children_receiving.update(children_receiving_params)
        format.html { redirect_to @children_receiving, notice: 'Children receiving was successfully updated.' }
        format.json { render :show, status: :ok, location: @children_receiving }
      else
        format.html { render :edit }
        format.json { render json: @children_receiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children_receivings/1
  # DELETE /children_receivings/1.json
  def destroy
    @children_receiving.destroy
    respond_to do |format|
      format.html { redirect_to children_receivings_url, notice: 'Children receiving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_children_receiving
      @children_receiving = ChildrenReceiving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def children_receiving_params
      params.fetch(:children_receiving, {})
    end
end

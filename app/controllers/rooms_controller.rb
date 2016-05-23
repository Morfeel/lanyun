class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, except: [:book, :search, :reserve]
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def book

  end

  def search

    @checkin = params[:checkin].present? ? (Date.strptime params[:checkin], '%m/%d/%Y') : Date.today
    @checkout = params[:checkout].present? ? (Date.strptime params[:checkout], '%m/%d/%Y') : Date.today + 1

    @profile = params[:profile].present? ? params[:profile] : nil
    @rooms = Room.findAvailableRoom roomProfile: RoomProfile.find_by_id(@profile), startDate: @checkin, endDate: @checkout
    respond_to do |format|
      format.html { render :book }
    end

  end

  def reserve
    @room = Room.find_by_id(params[:id])

    if !@room.blank?

      @checkin = params[:checkin].present? ? (Date.strptime params[:checkin], '%m/%d/%Y') : Date.today
      @checkout = params[:checkout].present? ? (Date.strptime params[:checkout], '%m/%d/%Y') : Date.today + 1

      if @room.reserve usr: current_user, startDate: @checkin, endDate: @checkout
        notice = 'Room was successfully reserved to ' + current_user.given_name + ' ' + current_user.family_name +
            ' from '+ @checkin.to_s + ' to ' + @checkout.to_s+'. Thanks. '
      else
        notice = 'Reserve failed. :('
      end

    else
      notice = 'Reserve failed. :('

    end

    respond_to do |format|
      format.html { redirect_to '/book', notice: notice }
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def room_params
    params.fetch(:room, {})
  end

  def admin_only
    if !current_user.admin
      render :file => File.join(Rails.root, 'public/403.html'), status: :forbidden, layout: false
    end
  end
end

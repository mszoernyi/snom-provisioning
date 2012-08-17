class UnknownPhonesController < ApplicationController
  # GET /unknown_phones
  # GET /unknown_phones.json
  def index
    @unknown_phones = UnknownPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unknown_phones }
    end
  end

  # GET /unknown_phones/1
  # GET /unknown_phones/1.json
  def show
    @unknown_phone = UnknownPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unknown_phone }
    end
  end

  # GET /unknown_phones/new
  # GET /unknown_phones/new.json
  def new
    @unknown_phone = UnknownPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unknown_phone }
    end
  end

  # GET /unknown_phones/1/edit
  def edit
    @unknown_phone = UnknownPhone.find(params[:id])
  end

  # POST /unknown_phones
  # POST /unknown_phones.json
  def create
    @unknown_phone = UnknownPhone.new(params[:unknown_phone])

    respond_to do |format|
      if @unknown_phone.save
        format.html { redirect_to @unknown_phone, notice: 'Unknown phone was successfully created.' }
        format.json { render json: @unknown_phone, status: :created, location: @unknown_phone }
      else
        format.html { render action: "new" }
        format.json { render json: @unknown_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unknown_phones/1
  # PUT /unknown_phones/1.json
  def update
    @unknown_phone = UnknownPhone.find(params[:id])

    respond_to do |format|
      if @unknown_phone.update_attributes(params[:unknown_phone])
        format.html { redirect_to @unknown_phone, notice: 'Unknown phone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unknown_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unknown_phones/1
  # DELETE /unknown_phones/1.json
  def destroy
    @unknown_phone = UnknownPhone.find(params[:id])
    @unknown_phone.destroy

    respond_to do |format|
      format.html { redirect_to unknown_phones_url }
      format.json { head :no_content }
    end
  end
end

class RequestsController < ApplicationController
  before_filter :authenticate_user!



  # GET /requests/new
  # GET /requests/new.json
  def new
    @request = current_user.sent_requests.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = current_user.sent_requests.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = current_user.sent_requests.new(params[:request])

    respond_to do |format|
      if @request.save
        format.html { redirect_to myrequests_path, notice: 'request was successfully created.' }
        format.json { render json: @request, status: :created, location: @request }

      else
        format.html { render action: "new" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /requests/1
  # PUT /requests/1.json
  def update
    @request = current_user.sent_requests.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        format.html { redirect_to @request, notice: 'request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request = current_user.sent_requests.find(params[:id])
    @request.destroy

    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end
end

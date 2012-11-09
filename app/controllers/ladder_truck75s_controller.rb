class LadderTruck75sController < ApplicationController
  # GET /ladder_truck75s
  # GET /ladder_truck75s.xml
  def index
    @ladder_truck75s = LadderTruck75.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ladder_truck75s }
    end
  end

  # GET /ladder_truck75s/1
  # GET /ladder_truck75s/1.xml
  def show
    @ladder_truck75 = LadderTruck75.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ladder_truck75 }
    end
  end

  # GET /ladder_truck75s/new
  # GET /ladder_truck75s/new.xml
  def new
    @ladder_truck75 = LadderTruck75.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ladder_truck75 }
    end
  end

  # GET /ladder_truck75s/1/edit
  def edit
    @ladder_truck75 = LadderTruck75.find(params[:id])
  end

  # POST /ladder_truck75s
  # POST /ladder_truck75s.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@ladder_truck75 = @timesheet.ladder_truck75s.build(params[:ladder_truck75])

    respond_to do |format|
      if @ladder_truck75.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Ladder Truck 75ft. was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /ladder_truck75s/1
  # PUT /ladder_truck75s/1.xml
  def update
    @ladder_truck75 = LadderTruck75.find(params[:id])

    respond_to do |format|
      if @ladder_truck75.update_attributes(params[:ladder_truck75])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Ladder Truck 75ft. was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ladder_truck75.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ladder_truck75s/1
  # DELETE /ladder_truck75s/1.xml
  def destroy
    @ladder_truck75 = LadderTruck75.find(params[:id])
    @ladder_truck75.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Ladder Truck was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end

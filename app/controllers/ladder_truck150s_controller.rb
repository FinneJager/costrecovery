class LadderTruck150sController < ApplicationController
  # GET /ladder_truck150s
  # GET /ladder_truck150s.xml
  def index
    @ladder_truck150s = LadderTruck150.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ladder_truck150s }
    end
  end

  # GET /ladder_truck150s/1
  # GET /ladder_truck150s/1.xml
  def show
    @ladder_truck150 = LadderTruck150.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ladder_truck150 }
    end
  end

  # GET /ladder_truck150s/new
  # GET /ladder_truck150s/new.xml
  def new
    @ladder_truck150 = LadderTruck150.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ladder_truck150 }
    end
  end

  # GET /ladder_truck150s/1/edit
  def edit
    @ladder_truck150 = LadderTruck150.find(params[:id])
  end

  # POST /ladder_truck150s
  # POST /ladder_truck150s.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@ladder_truck150 = @timesheet.ladder_truck150s.build(params[:ladder_truck150])

    respond_to do |format|
      if @ladder_truck150.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Ladder Truck 150ft. was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /ladder_truck150s/1
  # PUT /ladder_truck150s/1.xml
  def update
    @ladder_truck150 = LadderTruck150.find(params[:id])

    respond_to do |format|
      if @ladder_truck150.update_attributes(params[:ladder_truck150])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Ladder Truck 150ft. was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ladder_truck150.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ladder_truck150s/1
  # DELETE /ladder_truck150s/1.xml
  def destroy
    @ladder_truck150 = LadderTruck150.find(params[:id])
    @ladder_truck150.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Ladder Truck was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end

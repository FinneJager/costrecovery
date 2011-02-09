class EmtsController < ApplicationController
  # GET /emts
  # GET /emts.xml
 
  # GET /emts/1
  # GET /emts/1.xml
  #def show
  #  @emt = Emt.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @emt }
   # end
  #end

  # GET /emts/new
  # GET /emts/new.xml
  def new
    @emt = Emt.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emt }
    end
  end

  # GET /emts/1/edit
  def edit
    @emt = Emt.find(params[:id])
  end

  # POST /emts
  # POST /emts.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@emt = @timesheet.emts.build(params[:emt])

    respond_to do |format|
      if @emt.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'EMT was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /emts/1
  # PUT /emts/1.xml
  def update
    @emt = Emt.find(params[:id])

    respond_to do |format|
      if @emt.update_attributes(params[:emt])
        format.html { redirect_to(incident_timesheet_path, :notice => 'EMT was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emts/1
  # DELETE /emts/1.xml
  def destroy
    @emt = Emt.find(params[:id])
    @emt.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'EMT was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end

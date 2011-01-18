class MatListsController < ApplicationController
  # GET /mat_lists
  # GET /mat_lists.xml
  def index
    @mat_lists = MatList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mat_lists }
    end
  end

  # GET /mat_lists/1
  # GET /mat_lists/1.xml
  def show
    @incident = Incident.find(params[:incident_id])
	@mat_list = @incident.mat_list
    
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /mat_lists/new
  # GET /mat_lists/new.xml
  def new
    @mat_list = MatList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mat_list }
    end
  end

  # GET /mat_lists/1/edit
  def edit
    @incident = Incident.find(params[:incident_id])
	@mat_list = @incident.mat_list
  end

  # POST /mat_lists
  # POST /mat_lists.xml
  def create
    @incident = Incident.find(params[:incident_id])
	@mat_list = @incident.build_mat_list(params[:mat_list])
	
    respond_to do |format|
      if @mat_list.save
        format.html { redirect_to(incident_timesheet_path, :notice => 'Materials List was successfully saved.') }
	  else
        format.html { render :action => "new" }
        end
    end
  end

  # PUT /mat_lists/1
  # PUT /mat_lists/1.xml
  def update
    @incident = Incident.find(params[:incident_id])
	@mat_list = @incident.mat_list

    respond_to do |format|
      if @mat_list.update_attributes(params[:mat_list])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Materials List was successfully saved.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mat_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mat_lists/1
  # DELETE /mat_lists/1.xml
  def destroy
    @mat_list = MatList.find(params[:id])
    @mat_list.destroy

    respond_to do |format|
      format.html { redirect_to(mat_lists_url) }
      format.xml  { head :ok }
    end
  end
end

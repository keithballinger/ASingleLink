class SubmittedLinksController < ApplicationController
  # GET /submitted_links
  # GET /submitted_links.xml
  def index
    @submitted_links = SubmittedLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @submitted_links }
    end
  end

  # GET /submitted_links/1
  # GET /submitted_links/1.xml
  def show
    @submitted_link = SubmittedLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @submitted_link }
    end
  end

  # GET /submitted_links/new
  # GET /submitted_links/new.xml
  def new
    @submitted_link = SubmittedLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @submitted_link }
    end
  end

  # GET /submitted_links/1/edit
  def edit
    @submitted_link = SubmittedLink.find(params[:id])
  end

  # POST /submitted_links
  # POST /submitted_links.xml
  def create
    @submitted_link = SubmittedLink.new(params[:submitted_link])

    respond_to do |format|
      if @submitted_link.save
        format.html { redirect_to(@submitted_link, :notice => 'Submitted link was successfully created.') }
        format.xml  { render :xml => @submitted_link, :status => :created, :location => @submitted_link }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @submitted_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /submitted_links/1
  # PUT /submitted_links/1.xml
  def update
    @submitted_link = SubmittedLink.find(params[:id])

    respond_to do |format|
      if @submitted_link.update_attributes(params[:submitted_link])
        format.html { redirect_to(@submitted_link, :notice => 'Submitted link was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @submitted_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /submitted_links/1
  # DELETE /submitted_links/1.xml
  def destroy
    @submitted_link = SubmittedLink.find(params[:id])
    @submitted_link.destroy

    respond_to do |format|
      format.html { redirect_to(submitted_links_url) }
      format.xml  { head :ok }
    end
  end
end

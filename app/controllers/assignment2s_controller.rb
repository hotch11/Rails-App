class Assignment2sController < ApplicationController
  def accessibility
  end
	def sitemap
	end
  def index
    @assignment2s = Assignment2.paginate(:per_page => 25, :page => params[:page])
  end

  def show
    @assignment2 = Assignment2.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @assignment2s }
      format.atom
    end
  end


  def new
    @assignment2 = Assignment2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assignment2 }
    end
  end


  def edit
    @assignment2 = Assignment2.find(params[:id])
  end


  def create
    @assignment2 = Assignment2.new(params[:assignment2])

    respond_to do |format|
      if @assignment2.save
        format.html { redirect_to(@assignment2, :notice => 'New Asset was successfully created.') }
        format.xml  { render :xml => @assignment2, :status => :created, :location => @assignment2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assignment2.errors, :status => :unprocessable_entity }
      end
    end
  end


  def update
    @assignment2 = Assignment2.find(params[:id])

    respond_to do |format|
      if @assignment2.update_attributes(params[:assignment2])
        format.html { redirect_to(@assignment2, :notice => 'Asset was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assignment2.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @assignment2 = Assignment2.find(params[:id])
    @assignment2.destroy { redirect_to(@assignment2, :notice => 'Asset was deleted.') }

    respond_to do |format|
      format.html { redirect_to(assignment2s_url) }
      format.xml  { head :ok }
    end



end
end

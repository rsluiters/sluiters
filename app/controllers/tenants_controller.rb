class TenantsController < ApplicationController
  before_action :set_tenant, only: [:show, :edit, :update, :destroy]

  # GET /tenants
  def index
    @tenants = Tenant.all
  end

  # GET /tenants/1
  def show
    render "pages/#{@tenant.subfolder}/index"
  end

  # GET /tenants/new
  def new
    @tenant = Tenant.new
  end

  # GET /tenants/1/edit
  def edit
  end


  # POST /tenants
  def create
    @tenant = Tenant.new(tenant_params)

    respond_to do |format|
      if @tenant.save
        format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tenants/1
  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tenants/1
  def destroy
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: 'Tenant was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenant_params
      params.require(:tenant).permit(:name, :subfolder)
    end
end

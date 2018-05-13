class EquipmentController < ApplicationController
  before_action :current_borrower_must_be_equipment_loaner, :only => [:edit, :update, :destroy]

  def current_borrower_must_be_equipment_loaner
    equipment = Equipment.find(params[:id])

    unless current_borrower == equipment.loaner
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @equipment = Equipment.all

    render("equipment/index.html.erb")
  end

  def show
    @equipment = Equipment.find(params[:id])

    render("equipment/show.html.erb")
  end

  def new
    @equipment = Equipment.new

    render("equipment/new.html.erb")
  end

  def create
    @equipment = Equipment.new

    @equipment.user_id = params[:user_id]

    save_status = @equipment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/equipment/new", "/create_equipment"
        redirect_to("/equipment")
      else
        redirect_back(:fallback_location => "/", :notice => "Equipment created successfully.")
      end
    else
      render("equipment/new.html.erb")
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])

    render("equipment/edit.html.erb")
  end

  def update
    @equipment = Equipment.find(params[:id])

    save_status = @equipment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/equipment/#{@equipment.id}/edit", "/update_equipment"
        redirect_to("/equipment/#{@equipment.id}", :notice => "Equipment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Equipment updated successfully.")
      end
    else
      render("equipment/edit.html.erb")
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])

    @equipment.destroy

    if URI(request.referer).path == "/equipment/#{@equipment.id}"
      redirect_to("/", :notice => "Equipment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Equipment deleted.")
    end
  end
end

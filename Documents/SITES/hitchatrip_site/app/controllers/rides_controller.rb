class RidesController < ApplicationController
  layout 'rides'
  def index
    list
    render('list')
  end
  def list
    @rides = Ride.order("rides.Origin ASC")
  end
  def show
    @rides = Ride.find(params[:id])
    end
  def new
    @ride = Ride.new
  end
  def create
    @ride = Ride.new(params[:ride])
        if @ride.save
        flash[:notice] = "Ride created"
        redirect_to(:action => 'list')
    else
        render('new')
  end
  end
  def update
    @ride = Ride.find(params[:id])
    if @section.update_attributes(params[:section])
        flash[:notice] = "Section updated"
        redirect_to(:action => 'show', :id => @section.id)
    else
        render('edit')
    end
  end
  def delete
    @ride = Ride.find(params[:id])
  end 
  def destroy
    Section.find(params[:id]).destroy
    flash[:notice] = "Section destroyed"
    redirect_to(:action => 'list')
  end
end


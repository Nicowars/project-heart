class ProductosController < ApplicationController
  before_action	:get,		only: [:show, :edit, :update, :destroy]
  before_action	:new,		only: :create
  
  def get
    @producto= Producto.find(params[:id])
  end
  
  def new
    @producto= Producto.new
  end
  def index
    @productos= Producto.all
  end

  def show
  end
  def edit
  end

  def create
    @producto.nombre=params[:producto][:nombre]
    @producto.imagen=params[:producto][:imagen]
    @producto.descripcion=params[:producto][:descripcion]
    @monstruo.save
    redirect_to monstruos_path
  end
  def update
    @producto.nombre=params[:producto][:nombre]
    @producto.imagen=params[:producto][:imagen]
    @producto.descripcion=params[:producto][:descripcion]
    @monstruo.save
    redirect_to monstruos_path
  end
  def destroy
    @producto.destroy
    redirect_to monstruos_path
  end

end

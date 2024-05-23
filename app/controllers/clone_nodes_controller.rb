class CloneNodesController < ApplicationController
  before_action :set_clone_node, only: %i[show update destroy]

  def index
    @clone_nodes = CloneNode.all

    render json: @clone_nodes
  end

  def show
    render json: @clone_node
  end

  def create
    @clone_node = CloneNode.new(clone_node_params)

    if @clone_node.save
      render json: @clone_node, status: :created, location: @clone_node
    else
      render json: @clone_node.errors, status: :unprocessable_entity
    end
  end

  def update
    if @clone_node.update(clone_node_params)
      render json: @clone_node
    else
      render json: @clone_node.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @clone_node.destroy!
  end

  private

  def set_clone_node
    @clone_node = CloneNode.find(params[:id])
  end

  def clone_node_params
    params.require(:clone_node).permit(:machine_ip, :database_user, :database_password, :new_machine_ip, :status)
  end
end

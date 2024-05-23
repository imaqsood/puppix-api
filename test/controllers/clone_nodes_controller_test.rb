require "test_helper"

class CloneNodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clone_node = clone_nodes(:one)
  end

  test "should get index" do
    get clone_nodes_url, as: :json
    assert_response :success
  end

  test "should create clone_node" do
    assert_difference("CloneNode.count") do
      post clone_nodes_url, params: { clone_node: { database_password: @clone_node.database_password, database_user: @clone_node.database_user, machine_ip: @clone_node.machine_ip, new_machine_ip: @clone_node.new_machine_ip, status: @clone_node.status } }, as: :json
    end

    assert_response :created
  end

  test "should show clone_node" do
    get clone_node_url(@clone_node), as: :json
    assert_response :success
  end

  test "should update clone_node" do
    patch clone_node_url(@clone_node), params: { clone_node: { database_password: @clone_node.database_password, database_user: @clone_node.database_user, machine_ip: @clone_node.machine_ip, new_machine_ip: @clone_node.new_machine_ip, status: @clone_node.status } }, as: :json
    assert_response :success
  end

  test "should destroy clone_node" do
    assert_difference("CloneNode.count", -1) do
      delete clone_node_url(@clone_node), as: :json
    end

    assert_response :no_content
  end
end

require 'test_helper'

class CvSectionsControllerTest < ActionController::TestCase
  setup do
    @cv_section = cv_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cv_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cv_section" do
    assert_difference('CvSection.count') do
      post :create, cv_section: { content: @cv_section.content, title: @cv_section.title }
    end

    assert_redirected_to cv_section_path(assigns(:cv_section))
  end

  test "should show cv_section" do
    get :show, id: @cv_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cv_section
    assert_response :success
  end

  test "should update cv_section" do
    put :update, id: @cv_section, cv_section: { content: @cv_section.content, title: @cv_section.title }
    assert_redirected_to cv_section_path(assigns(:cv_section))
  end

  test "should destroy cv_section" do
    assert_difference('CvSection.count', -1) do
      delete :destroy, id: @cv_section
    end

    assert_redirected_to cv_sections_path
  end
end

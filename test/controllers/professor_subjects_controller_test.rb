require 'test_helper'

class ProfessorSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor_subject = professor_subjects(:one)
  end

  test "should get index" do
    get professor_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_professor_subject_url
    assert_response :success
  end

  test "should create professor_subject" do
    assert_difference('ProfessorSubject.count') do
      post professor_subjects_url, params: { professor_subject: { description: @professor_subject.description, professor_id: @professor_subject.professor_id, subject_id: @professor_subject.subject_id } }
    end

    assert_redirected_to professor_subject_url(ProfessorSubject.last)
  end

  test "should show professor_subject" do
    get professor_subject_url(@professor_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_professor_subject_url(@professor_subject)
    assert_response :success
  end

  test "should update professor_subject" do
    patch professor_subject_url(@professor_subject), params: { professor_subject: { description: @professor_subject.description, professor_id: @professor_subject.professor_id, subject_id: @professor_subject.subject_id } }
    assert_redirected_to professor_subject_url(@professor_subject)
  end

  test "should destroy professor_subject" do
    assert_difference('ProfessorSubject.count', -1) do
      delete professor_subject_url(@professor_subject)
    end

    assert_redirected_to professor_subjects_url
  end
end

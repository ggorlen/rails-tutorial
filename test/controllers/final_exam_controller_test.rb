require 'test_helper'

class FinalExamControllerTest < ActionDispatch::IntegrationTest
  test "should get finished_the_course" do
    get final_exam_finished_the_course_url
    assert_response :success
  end

end

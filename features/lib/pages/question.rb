require 'capybara/dsl'

class Question
  include Capybara::DSL
  
  attr_accessor :question_header

  QUESTION_PAGE_H1 = 'h1'
  QUESTION_PAGE_INFO_BTN = 'Info'

  def initialize
    @question_header = 'Questions'
  end

  def find_question_header
    find(:css, QUESTION_PAGE_H1).text
  end

  def click_info_button
    click_link(QUESTION_PAGE_INFO_BTN)
  end

end

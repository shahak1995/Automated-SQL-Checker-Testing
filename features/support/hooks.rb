Before do
  Dotenv.load('.env')
  @sql_automated_checker = SqlAutomatedCheckerTesting.new
  @email = ENV['EMAIL']
  @password = ENV['PASSWORD']
  @sql_automated_checker.index.visit_index
end

After('@save_button_question_page') do

end

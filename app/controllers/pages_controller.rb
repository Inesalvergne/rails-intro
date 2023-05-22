class PagesController < ApplicationController
  def about; end

  def contact
    # By defining an instance variable we make it available in our corresponding view file
    @students = ['William', 'Emily', 'Pablo', 'Tom', 'Alexane']
    @query = params['member']
    if @query.present?
      @students = @students.select do |student|
        student == @query
      end
    end
    # Use "raise" when you need to open the console to debug your code!
  end

  def home
    @date = Date.today
  end
end

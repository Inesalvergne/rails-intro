class PagesController < ApplicationController

  def about; end

  def contact
    @students = ['William', 'Emily', 'Pablo', 'Tom', 'Alexane']
    @query = params['member']
    if @query.present?
      @students = @students.select do |student|
        student == @query
    end
    end
    # raise
  end

  def home
    @date = Date.today
  end
end

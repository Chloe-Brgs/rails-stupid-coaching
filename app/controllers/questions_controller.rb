class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ""
    if params[:question] == "I am going to work"
      @answer ="Great!"
    elsif params[:question].include? "?"
      @answer ="Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end

end


# <%# I am going to work, the coach will answer Great!
# ? , the coach will answer Silly question, get dressed and go to work!.
# I don't care, get dressed and go to work! %>



# @members = @members.select { |member| member.start_with?(params[:member]) }

class CoachingControllerController < ApplicationController



  def answer
    @question = params["user_question"]
    @answer = coach_answer_enhanced(@question)
  end

  def ask

  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == "i am going to work right now!"
      return "That's what I want to hear"
    elsif your_message[-1, 1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = ""
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if (your_message == your_message.upcase) && (coach_answer(your_message) != "")
      answer = "I can feel your motivation! "
    end
    return "#{answer}#{coach_answer(your_message)}"
  end

end



class MessagesController < ApplicationController
  SYSTEM_PROMPT = "You are a careers and CV expert.\n\nI am a career starter looking to tailor my CV to a job opening that I've found.\n\nHelp me make my CV better.\n\nAnswer concisely in Markdown."

  def create
    @chat = current_user.chats.find(params[:chat_id])
    @cv = @chat.cv
    @message = Message.new(message_params)
    @message.chat = @chat
    @message.role = "user"

    if @message.save
      ruby_llm_chat = RubyLLM.chat
      response = ruby_llm_chat.with_instructions(instructions).ask(@message.content)
      Message.create(role: "assistant", content: response.content, chat: @chat)

      @chat.generate_title_from_first_message

      redirect_to chat_messages_path(@chat)
    else
      render "chats/show", status: :unprocessable_entity
    end
  end

  private

  def cv_context
    "Here is the context of the cv: #{@cv.content}."
  end

  def instructions
    [SYSTEM_PROMPT, cv_context, @cv.system_prompt]
    .compact.join("\n\n")
  end

  def message_params
    params.require(:message).permit(:content)
  end
end

end

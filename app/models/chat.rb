class Chat < ApplicationRecord
  TITLE_PROMPT = <<~PROMPT
    You are an assistant specialising in summarising a job title and job description into a 3-to-6 word title.
  PROMPT

  belongs_to :cv
  belongs_to :user

  validates :job_title, :job_description, presence: true

  has_many :messages, dependent: :destroy

  def generate_title
    return unless title.nil?

    chat_context = "job title: #{job_title}, job description: #{job_description}"
    instructions = [TITLE_PROMPT, chat_context].compact.join("\n\n")

    response = RubyLLM.chat.with_instructions(instructions).ask("summarize the following")
    update(title: response.content)
  end
end

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Makes sure the user is logged in before allowing them to see any page
  # (apart from the homepage - set in pages controller)

  CV_PROMPT = "You are a CV Improvement Assistant.\n\nI am a job seeker refining my CV for a specific job.\n\nHelp me improve my CV by giving clear, concise, high-impact suggestions.\nFocus on strengthening my wording, highlighting measurable achievements, and aligning the CV with the provided job title and job description.\n\nBreak down your guidance into small, actionable steps, without rewriting the entire CV unless I explicitly ask.\n\nAnswer concisely in Markdown."
end

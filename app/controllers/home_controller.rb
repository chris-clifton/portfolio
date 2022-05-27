# frozen_string_literal: true

# Controller for all static pages
class HomeController < ApplicationController
  def landing
  end

  def work
  end

  def projects
  end

  def about
  end

  def contact
  end

  def resume
  end

  def download_resume
    resume = render_to_string "home/_resume_body", layout: "pdf"
    binary_pdf = Dhalang::PDF.get_from_html(resume)
    send_data(binary_pdf, filename: 'chris_clifton_resume.pdf', type: 'application/pdf') 
  end
end

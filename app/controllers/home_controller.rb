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
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: "chris_clifton_resume",
                template: "home/resume",
                formats: [:html]
            end
        end
  end
end

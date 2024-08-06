class PagesController < ApplicationController
  def index
    signup = User.all.map(&:news_event)
    @events = signup.sort_by {|event| event[:date]}.reverse
  end
end

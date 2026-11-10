class PagesController < ApplicationController
  layout "two_worlds", only: [:home, :code, :dance]

  def home
  end

  def code
  end

  def dance
  end

  def now
  end
end

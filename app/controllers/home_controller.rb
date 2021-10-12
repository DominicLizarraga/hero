class HomeController < ApplicationController
  before_action :common_content, only: [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_power = Faker::Company.bs
    @corp_title = Faker::Company.profession
  end

  def index

  end


  def team

  end
end

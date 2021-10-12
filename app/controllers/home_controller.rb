class HomeController < ApplicationController
  before_action :common_content, only: [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_power = Faker::Company.bs
    @corp_title = Faker::Company.profession

    @rand_num = rand(1..1000)
    @set_number = rand(1..4)

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "200x200", format: "png", set: "set#{@set_number}", bgset: "bg1")
  end

  def index

  end


  def team
    @team_number = params[:team_number].to_i
  end
end

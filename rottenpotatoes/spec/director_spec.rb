require 'spec_helper'
require 'rails_helper'

RSpec.describe Movie, :type => :model do
	it "associates movies with director name" do
		star_wars_e7 = Movie.create!(title: "Star Wars Episode VII: The Force Awakens",
																	rating: "PG-13",
																	release_date: "December 18 2015",
																	director: "JJ Abrams")
		star_trek_reboot = Movie.create!(title: "Star Trek",
																			rating: "PG-13",
																			release_date: "May 8 2009",
																			director: "JJ Abrams")
		star_trek_reboot_2 = Movie.create!(title: "Star Trek: Into Darkness",
																				rating: "PG-13",
																				release_date: "May 16 2013",
																				director: "JJ Abrams")
		expect(Movie.other_films_with_director (star_wars_e7)).to eq([star_wars_e7,
																																	star_trek_reboot,
																																	star_trek_reboot_2])
	end
end

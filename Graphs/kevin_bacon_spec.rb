include RSpec

require_relative 'kevin_bacon'
require_relative 'node'

RSpec.describe Graph, type: Class do
  
  let(:line) { Line.new }
  let(:graph) { Graph.new}
  let(:kevin_bacon) { Node.new("Kevin Bacon") }
  
  let (:john_lithgow) { Node.new("John Lithgow") }
  let (:chris_penn) { Node.new("Chris Penn") }
  let (:wesley_snipes) { Node.new("Wesley Snipes") }
  let (:stephen_dorff) { Node.new("Stephen Dorff") }
  let (:johnny_depp) { Node.new("Johnny Depp") }
  let (:sean_penn) { Node.new("Sean Penn") }
  let (:christian_bale) { Node.new("Christian Bale") }
  let (:tim_robbins) { Node.new("Tim Robbins") }
  let (:fake) { Node.new("Fake") }
  let (:patrick_swayze) { Node.new("Patrick Swayze") }
  
  
  let (:film_hash) { Hash.new }
  
  before do
    film_hash["Footloose"] = [kevin_bacon, john_lithgow, chris_penn]
    film_hash["To Wong Foo, Thanks for Everything Julie Newmar"] = [wesley_snipes, patrick_swayze, chris_penn]
    film_hash["Blade"] = [wesley_snipes, stephen_dorff]
    film_hash["Public Enemies"] = [johnny_depp, stephen_dorff, christian_bale]
    film_hash["Before Night Falls"] = [johnny_depp, sean_penn]
    film_hash["Mystic River"] = [sean_penn, tim_robbins, kevin_bacon]
    
    kevin_bacon.set_films(film_hash)
    john_lithgow.set_films(film_hash)
    chris_penn.set_films(film_hash)
    wesley_snipes.set_films(film_hash)
    stephen_dorff.set_films(film_hash)
    johnny_depp.set_films(film_hash)
    sean_penn.set_films(film_hash)
    christian_bale.set_films(film_hash)
    tim_robbins.set_films(film_hash)
    patrick_swayze.set_films(film_hash)
    fake.set_films(film_hash)
    
  end
  
  describe "#find_kevin_bacon" do
    it "successfully finds matches" do
      find_bacon_johnny_depp = ["Public Enemies", "Before Night Falls", "Mystic River" ]
      expect(kevin_bacon.find_kevin_bacon(johnny_depp)).to eq(find_bacon_johnny_depp)
    end
    
    it "finds no matches" do
      expected_output = "No Bacon"
      find_bacon_fake = kevin_bacon.find_kevin_bacon(fake)
      expect(find_bacon_fake).to eq(expected_output)
    end
  end
end
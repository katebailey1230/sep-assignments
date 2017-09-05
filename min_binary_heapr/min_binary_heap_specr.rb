include RSpec

require_relative 'min_binary_heapr'

RSpec.describe MinBinaryHeapr, type: Class do
  let (:root) { Node.new("The Matrix", 87) }

  let (:tree) { MinBinaryHeapr.new(root) }
  let (:pacific_rim) { Node.new("Pacific Rim", 72) }
  let (:braveheart) { Node.new("Braveheart", 78) }
  let (:jedi) { Node.new("Star Wars: Return of the Jedi", 80) }
  let (:donnie) { Node.new("Donnie Darko", 85) }
  let (:inception) { Node.new("Inception", 86) }
  let (:district) { Node.new("District 9", 90) }
  let (:shawshank) { Node.new("The Shawshank Redemption", 91) }
  let (:martian) { Node.new("The Martian", 92) }
  let (:hope) { Node.new("Star Wars: A New Hope", 93) }
  let (:empire) { Node.new("Star Wars: The Empire Strikes Back", 94) }
  let (:mad_max_2) { Node.new("Mad Max 2: The Road Warrior", 98) }

  
  describe "#insert" do
    it "inserts all nodes into elements array and then sorts by ratings" do
      tree.insert(node, pacific_rim)
      tree.insert(node, braveheart)
      tree.insert(node, mad_max_2)
      tree.insert(node, empire)
      tree.insert(node, jedi)
      tree.insert(node, hope)
      tree.insert(node, donnie)
      tree.insert(node, inception)
      tree.insert(node, district)
      tree.insert(node, shawshank)
      tree.insert(node, martian)

      expect(tree.elements[0]).to eq "Pacific Rim"
      expect(tree.elements[1]).to eq "Braveheart"
end
  end

  describe "#find(data)" do
    it "returns nil if data is nil" do
      tree.insert(node, empire)
      tree.insert(node, mad_max_2)
      expect(tree.find(node, nil)).to eq nil
    end
    
    it "finds the correct node" do
      tree.insert(node, pacific_rim)
      expect(tree.find(node, pacific_rim.title).title).to eq "Pacific Rim"
    end
  end
    

  describe "#delete(data)" do
    it "handles nil gracefully" do
      expect(tree.delete(node, nil)).to eq nil
    end

    it "properly deletes a node" do
      tree.insert(node, hope)
      tree.delete(node, hope.title)
      expect(tree.find(node, hope.title)).to be_nil
    end
  end
   

  describe "#print" do
     specify {
       expected_output = "Pacific Rim: 72\nBraveheart: 78\nStar Wars: Return of the Jedi: 80\nThe Matrix: 87\nDistrict 9: 90\nStar Wars: The Empire Strikes Back: 94\nInception: 86\nStar Wars: A New Hope: 93\nThe Shawshank Redemption: 91\nThe Martian: 92\nMad Max 2: The Road Warrior: 98\n"
       tree.insert(node, hope)
       tree.insert(node, empire)
       tree.insert(node, jedi)
       tree.insert(node, martian)
       tree.insert(node, pacific_rim)
       tree.insert(node, inception)
       tree.insert(node, braveheart)
       tree.insert(node, shawshank)
       tree.insert(node, district)
       tree.insert(node, mad_max_2)
       expect { tree.print }.to output(expected_output).to_stdout
       }
  end
end


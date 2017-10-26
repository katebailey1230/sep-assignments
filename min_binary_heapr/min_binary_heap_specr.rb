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
    it "inserts everything properly" do
      tree.insert(root, pacific_rim)
      tree.insert(root, braveheart)
      tree.insert(root, mad_max_2)
      tree.insert(root, empire)
      tree.insert(root, jedi)
      tree.insert(root, hope)
      tree.insert(root, donnie)
      tree.insert(root, inception)
      tree.insert(root, district)
      tree.insert(root, shawshank)
      tree.insert(root, martian)

      expect(tree.elements[1].title).to eq "Pacific Rim"
end
  end

  describe "#find(data)" do
    it "handles nil gracefully" do
      tree.insert(root, empire)
      tree.insert(root, mad_max_2)
      expect(tree.find(root, nil)).to eq nil
    end

    it "finds the correct node" do
      tree.insert(root, pacific_rim)
      expect(tree.find(root, pacific_rim.title).title).to eq "Pacific Rim"
    end
  end


  describe "#delete(data)" do
    it "properly deletes a node" do
      tree.insert(root, hope)
      tree.delete(root, hope.title)
      expect(tree.find(root, hope.title)).to be_nil
    end
  end


  describe "#print" do
     specify {
       expected_output = "Pacific Rim: 72\nBraveheart: 78\nStar Wars: Return of the Jedi: 80\nThe Matrix: 87\nDistrict 9: 90\nStar Wars: The Empire Strikes Back: 94\nInception: 86\nStar Wars: A New Hope: 93\nThe Shawshank Redemption: 91\nThe Martian: 92\nMad Max 2: The Road Warrior: 98\n"
       tree.insert(root, pacific_rim)
       tree.insert(root, braveheart)
       tree.insert(root, jedi)
       tree.insert(root, )
       tree.insert(root, district)
       tree.insert(root, empire)
       tree.insert(root, inception)
       tree.insert(root, hope)
       tree.insert(root, shawshank)
       tree.insert(root, mad_max_2)
       expect { tree.print }.to output(expected_output).to_stdout
       }
  end
end

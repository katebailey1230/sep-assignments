include RSpec

require_relative 'min_binary_heap'

RSpec.describe MinBinaryHeap, type: Class do
let (:root) { Node.new("The Matrix", 87) }
let (:tree) { MinBinaryHeap.new(root) }
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


describe "#insert(data)" do
it "properly inserts a new node as lower value left child" do
tree.insert(root, district)
expect(root.left.title).to eq "District 9"
end

it "properly inserts a new node as higher value right child" do
tree.insert(root, shawshank)
tree.insert(root, empire)
expect(root.right.title).to eq "Star Wars: The Empire Strikes Back"
end

it "properly inserts a new node as a lower value root" do
expected_output = "Pacific Rim: 72\nThe Matrix: 87\nStar Wars: Return of the Jedi: 80\n"
tree.insert(root, jedi)
tree.insert(jedi, pacific_rim)
expect { tree.printf }.to output(expected_output).to_stdout
end
end

describe "#find(data)" do
it "handles nil gracefully" do
tree.insert(root, empire)
tree.insert(root, mad_max_2)
expect(tree.find(root, nil)).to eq nil
end

it "properly finds a left node" do
tree.insert(root, district)
expect(tree.find(root, district.title).title).to eq "District 9"
end

it "properly finds a left-left node" do
tree.insert(root, braveheart)
tree.insert(braveheart, pacific_rim)
tree.insert(pacific_rim, martian)
expect(tree.find(pacific_rim, martian.title).title).to eq "The Martian"
end
end

describe "#delete(data)" do
it "handles nil gracefully" do
expect(tree.delete(root, nil)).to eq nil
end

it "properly deletes a left node" do
tree.insert(root, hope)
tree.delete(root, hope.title)
expect(tree.find(root, hope.title)).to be_nil
end

it "properly deletes root node" do
expected_output = "Braveheart: 78\nThe Matrix: 87\n"
tree.insert(root, braveheart)
tree.insert(braveheart, pacific_rim)
tree.delete(pacific_rim, pacific_rim.title)
expect { tree.printf }.to output(expected_output).to_stdout
end


describe "#printf" do
specify {
expected_output = "Pacific Rim: 72\nBraveheart: 78\nStar Wars: Return of the Jedi: 80\nThe Matrix: 87\nDistrict 9: 90\nStar Wars: The Empire Strikes Back: 94\nInception: 86\nStar Wars: A New Hope: 93\nThe Shawshank Redemption: 91\nThe Martian: 92\nMad Max 2: The Road Warrior: 98\n"
tree.insert(root, hope)
tree.insert(root, empire)
tree.insert(root, jedi)
tree.insert(jedi, martian)
tree.insert(jedi, pacific_rim)
tree.insert(pacific_rim, inception)
tree.insert(pacific_rim, braveheart)
tree.insert(pacific_rim, shawshank)
tree.insert(pacific_rim, district)
tree.insert(pacific_rim, mad_max_2)
expect { tree.printf }.to output(expected_output).to_stdout
}
end
end
end

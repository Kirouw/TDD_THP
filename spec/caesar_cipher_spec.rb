require_relative '../lib/caesar_cipher'

describe "letter_to_ascii method" do
  it "should crypt the string into ascii method and return shift letter" do
    expect(letter_to_ascii("What a string!",5)).to eq("Bmfy f xywnsl!")
    expect(letter_to_ascii("Le cassoulet c'est delicieux",3)).to eq("Oh fdvvrxohw f'hvw gholflhxa")
    expect(letter_to_ascii("THP is not easy...",8)).to eq("BPX qa vwb miag...")
  end

end
=begin
# Problem
A collection of spelling blocks has two letters per block:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

- You can only spell those words that do not use both letters from any given block
- Each block can only be used once
- Case does not matter

Input: a string, word that you are trying to spell with the blocks
Output: Boolean
  - true if the word can be spelled from the blocks
  - false if the word cannot be spelled with the blocks

# Examples
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# Algorithm:
- Initialize a nested array of the spelling blocks
- Convert the word to all uppercase characters
- Iterate over the spelling blocks
  - Return false if either letter on the current block occurs more than once
  - Return false if both letters on the current block appear in the word
- If we make it to the end of the loop, return true
=end

SPELLING_BLOCKS = [%w(B O), %w(X K), %w(D Q), %w(C P), %w(N A), %w(G T), %w(R E),
  %w(F S), %w(J W), %w(H U), %w(V I), %w(L Y), %w(Z M)]

def block_word?(word)
  word = word.upcase

  SPELLING_BLOCKS.each do |block|
    block.each do |letter|
      return false if word.count(letter) > 1
    end

  return false if word.include?(block[0]) && word.include?(block[1])
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

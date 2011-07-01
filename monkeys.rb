class UserPod
  include UbaloPod::Behavior
  
  name "Shakespearean Monkeys"
  description "It's been said that with enough monkey and enough typewriters, they would eventually punch out the complete works of Shakespeare by chance.  This pod does a very little part of that.  It randomly creates strings until it comes up with: to be or not to be"
  
  input "max", "Wait how many attempty until you give up?", 1.0e+28, numeric: true
  input "match", "What string are we trying to match?", "to be or not to be"

  output "n", "Number of tries"
  output "found?", "Did you find the string?"
  
  def snap
    max = input_params["max"]
    match = input_params["match"]
    length = match.length
    i = 0.0
    found = generate_string(length)

    until i >= max or found == match do
      found = generate_string(length)
      i += 1
    end

    write_output({:n => i, :found? => found == match})

  end
  
  def generate_string(n)
    output = ''
    n.times do
      output << rand_char
    end
    output
  end
  
  characters = ("a".."z").to_a
  characters << " "
  CHARACTERS = characters
  CHARACTERS_LENGTH = 27
  
  def rand_char
    CHARACTERS[rand(CHARACTERS_LENGTH)]
  end
end
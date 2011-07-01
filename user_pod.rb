class UserPod
  include UbaloPod::Behavior
  
  name "Super Pod"
  description "A very useful pod"
  
  input :input_n, "The amount of super we started with", 100, numeric: true
  output :output_n, "The amount of super we produced"
  
  def snap
    n = input_params[:input_n] * 1_000_000
    write_output(output_n: n)
  end
end

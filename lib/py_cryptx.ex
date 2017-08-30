defmodule PyCryptX do

  @spec hash_pass(raw_password :: String.t) :: hashed_password :: String.t
  def hash_pass(raw_password) 
  when is_binary(raw_password)
  do
    PyCryptX.Port.hash_password(raw_password)
  end

  @spec check_pass(raw_password :: String.t, hashed_password :: String.t) :: true | false
  def check_pass(raw_password, hashed_password) 
  when is_binary(raw_password) and is_binary(hashed_password)
  do
    PyCryptX.Port.check_password(raw_password, hashed_password)
  end
end

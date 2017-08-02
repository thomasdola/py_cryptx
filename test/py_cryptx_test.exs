defmodule PyCryptXTest do
  use ExUnit.Case

  test "hash_password(password)" do
    assert is_binary(PyCryptX.Python.Port.hash_password("secret"))
    assert is_binary(PyCryptX.hash_pass("secret"))
  end

  test "check_password(password, hashed_password)" do
    hashed_password = PyCryptX.Python.Port.hash_password("secret")
    assert PyCryptX.Python.Port.check_password("secret", hashed_password)
    assert PyCryptX.check_pass("secret", hashed_password)
  end
end

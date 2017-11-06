defmodule ThueTest do
  use ExUnit.Case
  doctest Thue

  test "greets the world" do
    assert Thue.get(1) == "0"
    assert Thue.get(2) == "01"
    assert Thue.get(3) == "011"
    assert Thue.get(4) == "0110"
    assert Thue.get(5) == "01101"
    assert Thue.get(6) == "011010"
    assert Thue.get(63) == "011010011001011010010110011010011001011001101001011010011001011"
    assert Thue.get(64) == "0110100110010110100101100110100110010110011010010110100110010110"
  end
end

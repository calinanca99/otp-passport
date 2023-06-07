defmodule CoreTest do
  use ExUnit.Case
  import Calculator.Core

  test "adds" do
    assert add(2, 5) == 7
  end

  test "subtracts" do
    assert subtract(10, 4) == 6
  end

  test "multiply" do
    assert multiply(5, 2) == 10
  end

  test "divide" do
    assert divide(12, 3) == 4
  end

  test "negate" do
    assert negate(7) == -7
  end

  test "fold" do
    assert fold([1, 2, 3, 4], 0, &add/2) == 10
  end
end

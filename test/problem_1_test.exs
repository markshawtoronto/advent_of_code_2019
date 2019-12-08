defmodule Problem1Test do
  use ExUnit.Case
  doctest Problem1

  test "calculates mass" do
    assert Problem1.mass(12) == 2
    assert Problem1.mass(14) == 2
    assert Problem1.mass(1969) == 654
    assert Problem1.mass(100756) == 33583
  end

  test "reads a file" do
    contents = Problem1.fuel_list
    assert length(contents) == 100
  end

  test "calculates all masses" do
    assert Problem1.mass_sum == 3361976
  end
end

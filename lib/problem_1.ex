defmodule Problem1 do
  def mass(input) do
    div(input, 3) - 2
  end

  def mass_sum do
    masses = Enum.map fuel_list(), fn fuel ->
      fuel
        |> String.to_integer
        |> mass
    end
    masses |> Enum.sum
  end

  def fuel_list do
    contents = File.read!("./assets/fuel.txt")
    String.split(contents)
  end
end
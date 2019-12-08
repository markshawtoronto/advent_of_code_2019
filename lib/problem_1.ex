defmodule Problem1 do
  def mass(input) do
    div(input, 3) - 2
  end

  def mass_with_fuel(total_mass, mass) do
    new_mass = mass(mass)
    if new_mass < 1 do
      total_mass
    else
      total_mass = total_mass + new_mass
      mass_with_fuel(total_mass, new_mass)
    end
  end

  def mass_sum do
    masses = Enum.map fuel_list(), fn fuel ->
      fuel
        |> String.to_integer
        |> mass
    end
    masses |> Enum.sum
  end

  def mass_sum_with_fuel do
    masses = Enum.map fuel_list(), fn fuel ->
      integer_fuel = fuel |> String.to_integer
      mass_with_fuel(0, integer_fuel)
    end
    masses |> Enum.sum
  end

  def fuel_list do
    contents = File.read!("./assets/fuel.txt")
    String.split(contents)
  end
end
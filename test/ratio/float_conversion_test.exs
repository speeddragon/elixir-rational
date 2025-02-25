defmodule Ratio.FloatConversionTest do
  use ExUnit.Case, async: true

  # use Ratio coerces negative floats to Ratios, so the below test needs to be run outside the Ratio.FloatConversion
  # module.
  test "float conversion for negative numbers" do
    assert %Ratio{numerator: -2476979795053773, denominator: 2251799813685248} ==
             Ratio.FloatConversion.float_to_rational(-1.1)
  end
end

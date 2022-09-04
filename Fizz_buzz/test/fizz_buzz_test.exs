defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      resp = [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz, 23, 17]
      assert FizzBuzz.build('assets/numbers.txt') == resp
    end

    test "when a invalid file is provided, returns a error" do
      resp = "Error reading the file: enoent"
      assert FizzBuzz.build('invalid.txt') == resp
    end
  end
end

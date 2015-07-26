defmodule NinetyNineElixirProblems.P1 do
	@moduledoc ~S"""
  Find the last element of a list.

  ## Examples:
      iex> NinetyNineElixirProblems.P1.last [1,2,3,4]
      4

      iex> NinetyNineElixirProblems.P1.last []
      nil
  """
  
  def last([]) do
    nil
  end

  def last([item | []]) do
    item
  end

  def last ([_item | tail]) do
    last(tail)
  end
end
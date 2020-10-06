#Para escrever a documentação do módulo, podemos utilizar a macro @moduledoc . Neste caso, ela espera três aspas duplas com o texto dentro delas. Isso será útil quando executarmos este módulo com a função h nativa do Elixir para retornar a documentação dos módulos.
#Já a macro @doc serve para escrevermos a documentação específica de cada função do módulo e, neste caso, informamos o que a função faz, quais são os argumentos que ela espera, de que tipo eles são e exemplos de uso. Esta documentação também é lida pela função h , explicada anteriormente.
defmodule Student do
  @moduledoc """
  Define a Student struct and functions to handle a student.
  """
  defstruct name: nil, results: []

  @doc """
  Get the first name of a Student.
  ## Parameters
  - `student` - A Student struct.
  ## Examples
  *  joao = %Student{name: "João Joaquim"}
  *  Student.first_name(joao)
  *  "João"
  """
  def first_name(student) do
    student.name
    |> String.split
    |> List.first
  end

  @doc """
  Get the last name of a Student.
  ## Parameters
  - `student` - A Student struct.
  ## Examples
    *  joao = %Student{name: "João Joaquim"}
    *  Student.last_name(joao)
    *  "Joaquim"
  """
  def last_name(student) do
    student.name
    |> String.split
    |> List.last
  end

end
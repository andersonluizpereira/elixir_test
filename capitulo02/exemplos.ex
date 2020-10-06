#Imprime os dados na tela
IO.puts []
#Atribuição de variavél
a = 2 + 2
#Funciona como se fosse um toString()
inspect a
inspect ["Livro de Elixir", 1,2,3,4,5]
#Inteiros
59
#Numeros inteiros construidos com zeros, exemplo 100
1_00
#Numeros inteiros construidos com zeros, exemplo 1000
1_000
#Numeros inteiros construidos com zeros, exemplo 10000
10_000
#Numeros inteiros construidos com zeros, exemplo 100000
100_000
#Numeros inteiros construidos com zeros, exemplo 1000000
1_000_000
#Numeros ponto flutuantes 
1.0
7.2
49.7
3000.54
#Operações aritiméticas
4+2
8-3
7*7
4/2
#Divisao de Numeros
div(4,2)
#Resto da Divisao de Numeros
rem(4,2)
#Numeros binários para decimais
0b1111
#Numeros hexadecimais em decimais
0xF
#Numeros Octagonais em decimais
0o17
#Atoms (constantes)
:ok
:error
:xuxa
:funciona?
:nome_com_sobrenome
#Booleanos
0 || false
#Booleanos (nill equivale a false)
0 || nill
#Booleanos com os seus operadores exemplo a = true e b = false 
a > b
a >= b
a < b
a <= b
#Exemplo de Operações em booleanos igual false
 a=1
 b=0
 a === b - 1 === 1.0
 is_boolean(a === b - 1 === 1.0)
 #Exemplo de Operações em booleanos igual true
 a=1
 b=0
 a !== b - 1 !== 1.0
 is_boolean(a !== b - 1 !== 1.0)
#Strings com aspas duplas
"Livro de elixir"
#Strings com aspas duplas com IO.puts
IO.puts("Livro de elixir")
#Strings com aspas duplas com IO.puts com \n para pular uma linha
IO.puts("Livro de \nelixir")
a = "Livro de \nelixir"
a
#Strings com aspas duplas, indicando apenas texto com uma falsa interpolação
"2 + 2 igual a {2+2}"
#Strings com aspas duplas, indicando apenas texto com uma interpolação
"2 + 2 igual a #{2+2}"
#Strings com aspas duplas Heredocs
IO.puts """
Minha primeira
documentação de
exemplo
"""
#A função reverse do módulo String , com o nome bem sugestivo, pode inverter seus caracteres
String.reverse("Minha String")
String.reverse("Anderson")
#A função length pode nos dar a quantidade de caracteres ou tamanho da string
String.length("Anderson")
#Também podemos aumentar a caixa do primeiro caractere de uma string
String.capitalize("anderson")
#Listas Listas são um tipo de coleção de elementos e podem conter diversos outros tipos dentro dela. Por exemplo, podemos ter listas de números com atoms.
#Listas não devem ser comparadas com arrays de outras linguagens, porque não o são. Na verdade, o conceito aqui é que listas podem ter head (cabeça) e tail (cauda). A cabeça contém o valor e a cauda por si mesma é a lista inteira
#Elas também são imutáveis, ou seja, podem ser criadas, mas nunca alteradas. Então, você nunca terá uma cópia de uma lista ao remover ou adicionar elementos. O que você terá, na verdade, é uma nova lista.
#Lista de Numeros
[1, 2, 3]
a=[1, 2, 3]
b=["Livro", 2, 1.5, true, nil, :ok]
#Podemos facilmente concatenar listas utilizando a função ++/2
[1,2,3,4,5] ++ [6,7,8,9,10]
#Porém, adicionar elementos no fim da lista é um processo lento, já que o Elixir precisa copiar a lista inteira e criar uma nova com o novo elemento. Neste caso, prefira concatenar na frente da lista em vez de no fim, uma vez que neste caso o processamento será muito mais eficiente.
lista = [1,2,3,4,5]
#Nova lista ordenada
nova_lista = [6,7,8,9,10 | lista] |> Enum.sort
#Nova lista decrescente
a = nova_lista |> Enum.reverse
#Podemos também subtrair listas com a função --/2 . Mas, ao subtrair elementos, a função remove o primeiro elemento que casa, e não todos os repetidos.
[1,2,3,4,5] -- [2,4]
[1,2,3,4,4] -- [2,4]
#Uma maneira de pegarmos a cabeça da lista, que na verdade é o primeiro elemento, é utilizando a função hd/1
hd([1,2,3])
#Já para pegarmos a cauda, que é o restante da lista sem a cabeça, nós usamos a função tl/1
tl([1,2,3])
#Tuplas são similares a listas e podemos armazenar elementos de qualquer tipo dentro delas. Contudo, escrevemos tuplas entre chaves em vez de parênteses.
#A principal diferença entre tuplas e listas é que acessar elementos individuais de uma tupla é mais rápido. Porém, crescer e adicionar mais elementos pode ser custoso com o tempo, coisa que não ocorre sempre com listas.
{"livro", 10, true, :funciona?, 1.5}
tupla = {"livro", 10, true, :funciona?, 1.5}
#Tamanho da quantidade de elementos da tupla
tuple_size tupla
#Acessando o elemento tupla que começa com zero 
elem tupla, 2
#A função put_elem/3 permite atualizar um elemento dentro de uma tupla, então vamos supor que temos uma tupla com nome e idade e precisamos atualizar a idade.
a = {:idade, 18} 
put_elem a, 1, 16
tupla = {:jhon, 20}
put_elem tupla, 1, 25
#Mapas são uma coleção de chave/valor e são similares a tuplas, exceto quando se acrescenta um sinal de % (porcentagem) na frente das chaves.
mapa2 = %{chave1: 1, chave2: 2, chave3: "valor 3"} 
#PATTERN MATCHING
#Reconhecimento de padrões é uma funcionalidade que serve
#26 3 ORGANIZAÇÃO
#E-book gerado especialmente para ANDERSON LUIZ SANCHES PEREIRA - andy2903.alp@gmail.com
  
#10
#iex(2)> 10 = x
#para decompor estruturas complexas em estruturas mais simples. Em Elixir, até mesmo o que parece ser uma atribuição de valor a uma variável realiza Pattern Matching por trás das cenas. Isso pode soar estranho neste momento, mas veremos exemplos que nos ajudarão a entender melhor este aspecto da linguagem.
#Quando fazemos uma atribuição de valor a uma variável, por exemplo, x = 10 , o que acontece na verdade é uma checagem de padrões. Aqui, não dizemos que o operador = seja igual , mas sim que estamos tentando fazer match (procurando casar) o valor à esquerda do igual com o valor à direita dele — neste caso, casar
#x com 10 .
x = 10
10 = x
#Da erro
10 = 11
#** (MatchError) no match of right hand side value: 11
#ok
{:carro, modelo} = {:carro, "Honda"}
#Erro
{:carro, modelo} = {:moto, "Honda"}
** (MatchError) no match of right hand side value: {:moto, "Honda"}
#MÓDULOS
#Módulo é o mecanismo usado para agrupar funções e lógica que você deseja reaproveitar. List e String são exemplos de módulos nativos e, claro, você pode criar seu próprio módulo. Para isso, basta utilizar a palavra reservada defmodule seguida do nome do módulo, por exemplo, 
defmodule Multiplicador .
    def multiplique(a, b) do
        a*b
    end
end
#Exemplo de acesso
Multiplicador.multiplique(2, 2)
Multiplicador.multiplique 5, 3

#Funcoes privadas, funções chamando funções
#Existem ainda funções privadas, que são funções que só podem ser chamadas de dentro do módulo no qual foram declaradas. Isto é bastante similar ao que acontece em outras linguagens.
defmodule Multiplicador do
 def multiplique(a, b \\ 2), do: soma(10, a * b)
   defp soma(a, b), do: a + b
end

#Exemplo de acesso
Multiplicador.multiplique 2, 3
#Resultado da 16
#Tentado acessar a função privadas
Multiplicador.soma 2, 2
#Acontece o seguinte
** (UndefinedFunctionError) function Multiplicador.soma/2 is undefined or private
    Multiplicador.soma(2, 2)
#Ajustado modulo aninhado
defmodule Multiplicador do
    defmodule Multiplique do
        def por_dois(numero) do
            numero * 2
        end
    end
end        
#módulo aninhado com ponto
defmodule Multiplicador.Multiplique do
    def por_dois(numero) do
        numero * 2
    end
end

 #Funções
 #Na seção anterior, notamos que, para criar uma função dentro de um módulo, bastava utilizarmos a palavra reserva def , seguida do nome da função e seus argumentos. Além disso, também podemos criar funções sem argumentos e, inclusive, funções sem nome!
 defmodule Multiplicador do def multiplique(a, b) do a * b end end
#Testando
Multiplicador.Multiplique.por_dois(2)
 #Criando funções
 multiplicador = fn a, b -> a * b end
 #Error
 multiplicador(2, 4)
 #Acerto
 multiplicador.(2, 3)

 #Funções anonimas
 #Criar funções anônimas é uma tarefa tão comum que os desenvolvedores por trás de Elixir resolveram criar um atalho para isso. O & pode ser usado para criar funções anônimas mais facilmente. Parece confuso de início, mas na verdade é bastante simples.
 soma = &(&1 + &2)
 soma.(2,2)
 multiplica_e_soma = &(&1 * &2 + &3)
 multiplica_e_soma.(2,2,1)
#FUNÇÕES E PATTERN MATCHING
#Funções também podem ter várias assinaturas diferentes, e o Elixir consegue fazer isso porque utiliza o reconhecimento de padrões que vimos anteriormente. Neste exemplo, definiremos uma função com múltiplas assinaturas, que reconhecerá o padrão do atom que será enviado como argumento e retornará o conteúdo de acordo.
#Caso não nos importarmos com o padrão, basta usarmos o underscore que atua para pegar qualquer coisa em qualquer padrão. É importante saber que o _ normalmente é utilizado no final da expressão, porque a leitura do padrão é realizada de cima para baixo e, se você o colocar no início, ele vai aceitar qualquer padrão, impedindo que os outros sejam reconhecidos.
escreva_o_nome = fn
:tiago -> "Seu nome é Tiago"
:davi -> "Seu nome é Davi"
_ -> "Não me importo qual é o seu nome"
end

#CONTROLE DE FLUXO
#Para lidar com controle de fluxo, existem mecanismos tradicionais como o if/else . Alguns não tão tradicionais como o unless , que é o contrário do if , e alguns mais modernos, como o case , que lembra bastante um switch para quem vem de outras linguagens. É importante saber que esses mecanismos não são construções especiais como na maioria das outras linguagens.
x=10
if x do
"x tem valor válido"
else
"x é nil ou false"
end 

#O unless é conhecido de quem vem de linguagens como Ruby, e funciona da mesma maneira. Ele verifica se a condição é falsa, ou seja, exatamente o contrário do if , que verifica se a condição é verdadeira.
unless x == 10 do
"x não é 10"
 else
"x é 10 sim"
end
#Tb podemos fazer assim
if true, do: 1 + 2
if false, do: :tiago, else: :davi
#Quando precisamos checar diversas condições e encontrar a primeira condição válida, nós podemos utilizar a macro cond . Veja os exemplos.
cond do
2 + 2 == 5 -> "Isso não é verdade"
2 + 2 == 6 -> "Isso também não é verdade"
2 + 2 == 4 -> "Ok, você acertou!"
end 
#Erro
cond do
2 + 2 == 5 -> "Isso não é verdade"
2 + 2 == 6 -> "Isso também não é verdade"
2 + 2 == 7 -> "Você está louco!"
end

#Outras condições
case :tiago do
:davi -> "Isso não casa com :tiago"
10 -> "Isso muito menos"
:jonas -> "Estou ficando cansado..."
:tiago -> "Ok, você casou :tiago com :tiago!"
end 
#outras condições
case 10 do
11 -> "10 não é 11"
12 -> "10 não é 12"
_ -> "10 não é underscore, mas underscore é um coringa que casa com tudo beleza?"
end

#GUARD CLAUSES
case {1,2,3} do
{1,x,3} when x > 0 -> "Isso vai casar porque 2 é maior que zero"
_ -> "Isso casaria se não tivesse casado antes"
end

minha_funcao = fn
a,b when a>0 and b==10 -> a+b
a, b when is_atom(a) -> "#{a} é um atom"
end

#OPERADOR PIPE
#O operador pipe |> é algo bem simples, mas que facilita demais na hora de escrever código Elixir. Basicamente ele pega a saída da expressão da esquerda e passa como primeiro argumento de uma função à direita, e assim por diante. 
colecao = [1,2,3]
Enum.map(colecao, &(&1 * 2))
Enum.filter(colecao, &(&1 > 2))
#Uma pesquisa um pouco mais complexa
Enum.filter(Enum.map(colecao, &(&1 * 2)), &(&1>4))
#Neste exemplo, utilizando o Pipe, perceba que estamos passando somente a função anônima como segundo argumento para o filter , porque o operador Pipe automaticamente passou o retorno da função anterior map como primeiro argumento para ele.
Enum.map(colecao, &(&1 * 2)) |> Enum.filter(&(&1>4))
#Criamos uma lista de itens que, supostamente, vieram de uma lista de compras, então aplicamos desconto de 20% em cada um dos produtos, e depois filtramos para pegar somente aqueles que têm valor superior a R$10,00. Em seguida, somamos todos estes valores e mostramos o resultado na tela, tudo utilizando o que aprendemos junto com o pipe.
itens = [%{produto: "Tv LG 32 polegadas", valor: 935.50},
  %{produto: "Notebook Samsung 1TB", valor: 1599.00}, %{produto: "B
arbeador Gilette", valor: 9.99}]
[%{produto: "Tv LG 32 polegadas", valor: 935.5},
%{produto: "Notebook Samsung 1TB", valor: 1599.0},
%{produto: "Barbeador Gilette", valor: 9.99}]
Enum.map(itens, &(Float.round(&1.valor - &1.valor * 0.2))) |> Enum.filter(&(&1 > 10.00)) |> Enum.sum 
#Listas
#Uma lista em Elixir consiste de head e tail . Logo, head seria a cabeça ou o primeiro valor encontrado na lista, e tail , a cauda ou a própria lista em si. Isso significa que até mesmo uma lista de um único elemento contém head/tail, sendo que, neste caso, o head é o elemento que está na lista e tail seria uma lista vazia, já que não existem outros elementos dentro dela.
[1] = [ 1 | [] ]
#Podemos usar o operador pipe para fazer Pattern Matching do head e do tail da lista, sendo que o que fica à esquerda do operado pipe é o head, e o que fica à direita dele é o tail.
[head | tail] = [1,2,3,4,5,6,7,8,9,10]
#Você não precisa chamá-los de head/tail, porém é uma convenção e uma boa prática chamar deste modo; a não ser que você chame de algo que represente melhor o contexto onde está sendo aplicado.
[nome | jogos] = ["Tiago", "Dragon Age Inquisition", "GTA V", "Devil My Cry"]
#LIST COMPREHENSION
#Em Elixir, existe uma maneira funcional de percorrer coleções que denominamos List comprehension. Ela pode ser classificada como a capacidade de gerar coleções a partir de outras coleções, porque é exatamente isso que faz.
for x <- [1,2,3], do: x * 2
#Também podemos aplicar um filtro na macro, fazendo com que somente os elementos que passem no filtro sejam colocados na nova lista que será criada. Nos exemplos, somente atoms e números inteiros estarão presentes na nova coleção.
for x <- [1,2,3, :tiago, :davi], is_atom(x), do: x
for x <- [1,2,3, :tiago, :davi], is_integer(x), do: x [1, 2, 3]
#Criando função
estudantes = [{"Daniel", 15}, {"Philip", 27}, {"Joana", 1}]
maior_de_idade = fn {nome, idade} -> idade >= 18 end
for estudante <- estudantes, maior_de_idade.(estudante),do: estudante
#Podemos ainda criar novas estruturas e fazer Pattern Matching. Note que, no lugar do x, realizamos o match com o nome e o aparelho de videogame que está presente na tupla, e ainda conseguimos transformá-lo em um mapa de chave/valor.
for x <- [1,2,3, :tiago, :davi], is_integer(x), do: {x, x* 2
for {nome, aparelho} <- [{"tiago", "PS4"}, {"Davi", "PS3"},{"Jonas", "PS2"}], do: nome
for {nome, aparelho} <- [{"tiago", "PS4"}, {"Davi", "PS3"},{"Jonas", "PS2"}], do: aparelho
for a <- [1,2], b <- [3,4], do: {a,b}
for a <- [1,2], b <- [3,4], do: a + b
for {nome, aparelho} <- [{"tiago", "PS4"}, {"Davi", "PS3"},{"Jonas","PS2"}], into: %{}, do: {nome, aparelho}
for {nome, aparelho} <- [{"tiago", "PS4"}, {"Davi", "PS3"},{"Jonas","PS2"}], into: %{}, do: {nome |> String.downcase |> String.to_atom, aparelho}
#LAZY EVALUATION
#Carregamento lento (lazy evaluation) é um recurso presente na linguagem para evitar carregarmos dados desnecessários em memória. Isso é muito útil para lidar com coleções cujo tamanho não sabemos, ou algum arquivo pesado que não pode ser carregado todo de uma vez.
#Execute o exemplo para ver quanto tempo demora para mapear 20 milhões de registros, e depois pegarmos apenas dez deles para mostrar na tela.
Enum.map(1..20_000_000, &(&1)) |> Enum.take(10)
#Agora realizaremos a mesma operação usando Stream . Execute e veja a diferença no tempo de execução que é praticamente imediato.
Stream.map(1..20_000_000, &(&1)) |> Enum.take(10)
#Vamos entender o que aconteceu. O Enum.take(10) pediu somente dez elementos, então a diferença foi que mapear a coleção com Enum carregou tudo em memória para depois utilizar somente 10. Já o Stream carregou em memória somente o que de fato precisou e utilizou conforme foi exigido dele. Neste caso ele carregou apenas 10 e não os 20 milhões. Além disso, Enum devolve uma nova lista e Stream devolve um stream de dados.
Enum.map([1,2,3], &(&1))
Stream.map([1,2,3], &(&1))
#RECURSIVIDADE
#Recursividade é a capacidade que uma função tem de executar a si mesma múltiplas vezes, até resolver um determinado problema. Isso parece um pouco confuso, mas na verdade é algo bastante simples que, se bem aplicado, pode ajudar a resolver questões complexas de modo muito mais simples do que seria se fossem feitas de outra forma.
Enum.count [1,2,3]
#Na segunda versão, ela reconhece o padrão de uma lista com elementos e utiliza head/tail para pegar o primeiro elemento no head e o restante da lista no tail. Em seguida, esta função executa a si mesma passando como argumento 1 + contar(tail) .
defmodule Contador do
def contar([]), do: 0
def contar([head | tail]), do: 1 + contar(tail)
end
#contar
Contador.contar []
Contador.contar [1,2,3,4,5]
#Caso queira importar o arquivo junto com suas funções digite iex arquivo.ex
iex produto.ex
#Usando a função dentro do arquivo
# defmodule Produto do
#     defstruct nome: nil, valor: 1.99
# end
sabonete = %Produto{nome: "Dove"}
#Resposta %Produto{nome: "Dove", valor: 1.99}, pois o valor padrão é 1.99
shampoo = %Produto{nome: "Nivia", valor: 5.50}
#Resposta %Produto{nome: "Nivia", valor: 5.5}
#Isso parece muito similar a Orientação a Objetos (OO)
#Lembre-se de que Elixir é uma linguagem funcional e não orientada a objetos, logo, não é pensando em OO que você vai tirar proveito de uma linguagem como essa. 
#A função first_name recebe um estudante, captura seu nome e cria uma lista dividindo-a onde antes havia espaços em branco. A função split/1 do módulo String recebe por padrão uma String .

String.split("foo bar")
#Precisamos capturar o primeiro nome do estudante, então vamos utilizar a função first/1 do módulo List , que recebe uma lista como argumento e retorna o primeiro elemento dessa lista.
String.split("foo bar") |> List.first
#Pegando o último nome
String.split("foo bar") |> List.last

#Importando o arquivo e chamando a função
iex student.ex
carlos = %Student{name: "Carlos Joaquim"}
#Resultado %Student{name: "Carlos Joaquim", results: []}
#Caso queira testar a função de nome e sobrenome
Student.first_name carlos
#Para compilar todos os módulos, organize-os dentro de uma pasta e execute elixirc , passando os nomes dos módulos para compilar todos de uma vez. Neste caso, seria algo como:
elixirc calculator.ex student.ex subject.ex
#Depois de compilar todos os módulos, alguns arquivos com extensão .beam serão gerados no diretório. Estes são arquivos de bytecode que a máquina virtual vai executar.
#Vamos então executar o start principal para vermos o resultado. Faremos Pattern Matching do resultado para uma variável result com o resultado geral, e best para os melhores.
#Digite iex
{result, best} = Calculator.start()
#Resultado dos estudantes
result
# [%{average: 6.55, first_name: "João", last_name: "Joaquim"},
# %{average: 5.16, first_name: "Maria", last_name: "Silva"},
# %{average: 4.78, first_name: "Pedro", last_name: "Pedrada"},
# %{average: 4.61, first_name: "Kauã", last_name: "Camboinhas"}]
best
# [%{average: 6.55, first_name: "João", last_name: "Joaquim"}]
#Vamos agora ler a documentação que escrevemos para o
#módulo Student , utilizando a função h nativa do Elixir.
h Student
#Define a Student struct and functions to handle a student.

 
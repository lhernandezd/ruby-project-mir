# Juego Reto5 :> Proyecto Ruby Make it Real
class Game
  def initialize
    puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? "
    print "Y / N : "
    inicio = gets.chomp
    if inicio == "Y"
      _read
    else
      _print("Hasta Luego!!")
    end
  end

  private

  def _read
    data = IO.readlines("data.txt")
    data.each_with_index do |line, index|
      while index.odd?
        print "Adivinar: "
        @answer = gets.chomp
        _compare(line)
        break if @word == "Correcto!"
      end
      if index.even?
        _print("Definición")
        _print(line)
      end
    end
  end

  def _compare(line)
    if line.strip.eql? @answer
      @word = "Correcto!"
      _print(@word)
    else
      @word = "Incorrecto!, Trata de nuevo"
      _print(@word)
    end
  end

  def _print(line)
    puts line
  end
end

p1 = Game.new

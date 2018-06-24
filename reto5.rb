# Juego Reto5 :> Proyecto Ruby Make it Real
class Game
  def initialize
    puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? "
    print "Y / N : "
    inicio = gets.chomp
    if inicio == "Y"
      _read
    else
      puts "Hasta Luego!!"
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
        puts "Definición"
        puts line
      end
    end
    puts "Felicitaciones!!, Acabaste el juego"
  end

  def _compare(line)
    if line.strip.eql? @answer
      @word = "Correcto!"
      puts @word
    else
      @word = "Incorrecto!, Trata de nuevo"
      puts @word
    end
  end
end

p1 = Game.new

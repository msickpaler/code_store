# ticket=Ticket.new(190)
# umeda.enter(ticket)
# mikuni.exit(ticket) #=>true

# ticket
class Ticket
  attr_accessor :price, :gate_from

  def initialize(price)
    @price = price
  end
end

# station
class Gate
  # attr_accessor :price

  def initialize(name)
    @station = name
  end

  def enter(ticket)
    ticket.gate_from = @station
  end

  def exit(ticket)
    case ticket.price
    when 150
      p (ticket.gate_from == :juso) ||
        (ticket.gate_from == :mikuni && @station != :umeda) ||
        (ticket.gate_from == :umeda && @station != :mikuni)
    when 190
      puts true
    end
  end

  private

  def check_from(ticket)
    ticket.gate_from == :juso
  end
end
ticket = Ticket.new(150)
umeda = Gate.new(:umeda)
mikuni = Gate.new(:mikuni)
juso = Gate.new(:juso)
# umeda.enter(ticket)
mikuni.enter(ticket)
mikuni.exit(ticket) #=>true
juso.exit(ticket) #=>true
p ticket.is_a?(Ticket)
p ticket.is_a?(Object)
p ticket.is_a?(BasicObject)

# thing parent class

class Thing
  def initialize(name, description)
    @name = name
    @description = description
  end

  def get_name
    @name
  end

  def set_name(name)
    @name = name
  end

  def get_description
    @description
  end

  def set_description(description)
    @description = description
  end
end

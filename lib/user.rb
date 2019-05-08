class User
  attr_reader :name, :jokes, :joke_by_id

  def initialize(name)
    @name = name
    @jokes = []
    @joke_by_id = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def joke_by_id(id)
    @jokes.each do |joke|
      if id == joke.id
        @joke_by_id << joke
      end
    end
  end
end

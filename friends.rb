def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  array = person[:favourites][:snacks]
  return array.include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(person1, person2, money)
  person1[:monies] -= money
  person2[:monies] += money
end

def set_of_foods(people)
  foods = []
  for person in people
    foods.concat(person[:favourites][:snacks])
  end
  return foods
end

def find_people_with_no_friends(people)
  people_with_no_friends = []
  for person in people
    people_with_no_friends.push(person[:name]) if person[:friends].length == 0
  end
  return people_with_no_friends
end

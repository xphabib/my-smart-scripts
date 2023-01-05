games = [
  ['c', 'd', 'f', 'm', 'b', 'k'],
  ['a', 'j', 'h', 'k', 'g', 'm', 'n'],
  ['d', 'c', 'g'],
  ['c', 'k', 'a']
]

event_players = games.flatten
players = event_players.uniq
players.each do |player|
  position = 9999
  index = 9999
  games.each_with_index do |game, i|
    game.each_with_index do |participant, j|
      if player == participant
        if position > j
          position = j
          index = i
        end
      end
    end
  end

  games.each_with_index do |game, i|
    unless i == index
      game.delete(player)
    end
  end
end

final = []
games.each do |game|
  game_arr = []
  game.each_with_index do |player, i|
    if i < 3
      game_arr << player
    end
  end
  final << game_arr
end

p final
module FightsHelper
  def available_weapons
    [
      {'name' => 'Excalibur', 'multiplier' => 3},
      {'name' => 'Knife', 'multiplier' => 2},
      {'name' => 'Baseball bat', 'multiplier' => 1.5},
      {'name' => 'Spoon', 'multiplier' => 0.8}
    ]
  end

  def available_shields
    [
      {'name' => 'Magic shield', 'strength' => 80},
      {'name' => 'Iron shield', 'strength' => 50},
      {'name' => 'Wooden shield', 'strength' => 20},
      {'name' => 'Paper shield', 'strength' => 0}
    ]
  end

  def retrieve_weapon_hash(weapon_name)
    available_weapons.each do |weapon|
      return weapon if weapon_name == weapon['name']
    end
    return nil
  end

  def retrieve_shield_hash(shield_name)
    available_shields.each do |shield|
      return shield if shield_name == shield['name']
    end
    return nil
  end

  def win_rate(character)
    puts character.name
    total = @fights.where(winner: character).count + @fights.where(loser: character).count
    if total == 0
      return 0
    end
    return (@fights.where(winner: character).count.to_f / total * 100).to_i
  end

end

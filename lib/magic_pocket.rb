require 'magic_pocket/version'
require 'magic_pocket/hash'

module MagicPocket
  def stuff! key, value
    if has_key? key
      self[key] = [self[key]] unless self[key].is_a? Array
      self[key] << value
    else
      self[key] = value
    end
  end
end

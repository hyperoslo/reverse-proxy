PAIR_DELIMITER = ";"
KEY_VALUE_DELIMITER = "|"

def parse_sites
  sites_str = ENV.fetch('SITES')
  pairs = sites_str.split(PAIR_DELIMITER)

  pairs.map do |pair|
    from, to = pair.split KEY_VALUE_DELIMITER
    { from: from, to: to }
  end
end

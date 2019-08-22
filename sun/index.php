$yahoo = file_get_contents('https://www.yahoo.com/news/weather/');

preg_match_all ( '/\s\d+:\d+\s[AP]M/' , $yahoo , $matches);

print_r($matches);


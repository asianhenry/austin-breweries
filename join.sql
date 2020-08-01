select br.name as Brewery, be.name as Beer, be.rating
from breweries as br
join beers as be
on br.id = be.brewery_id;
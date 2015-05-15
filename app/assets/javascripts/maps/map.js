function createMap(longitude, lattitude, zoom, gon_query){
	var map;
	var arrMarkers = [];
	var arrInfoWindow = [];
	var markers;

	map = new BMap.Map("allmap"); 
	map.centerAndZoom(new BMap.Point(longitude, lattitude), zoom);
	map.addControl(new BMap.MapTypeControl());
	map.enableScrollWheelZoom();
	map.enableContinuousZoom();
	map.addControl(new BMap.NavigationControl());
//	map.setMapStyle({styleJson: mapStyle});

	console.log(gon_query);

	if (gon_query.length > 1){
		$.each(gon_query, function(key, val) {
				marker = new BMap.Marker(new BMap.Point(val.longitude, val.lattitude));
				map.addOverlay(marker);	
		}); //end of .each()
	} else {
		marker = new BMap.Marker(new BMap.Point(gon_query.longitude, gon_query.lattitude));
		map.addOverlay(marker);	
	}

}

function updateMap(){

}
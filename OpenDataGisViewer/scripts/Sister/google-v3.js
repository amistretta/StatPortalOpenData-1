﻿var gphy = new OpenLayers.Layer.Google(
        "Google Physical",
        { type: google.maps.MapTypeId.TERRAIN }       
    );
var gmap = new OpenLayers.Layer.Google(
        "Google Streets", // the default
        {numZoomLevels: 20 }
    );
var ghyb = new OpenLayers.Layer.Google(
        "Google Hybrid",
        { type: google.maps.MapTypeId.HYBRID, numZoomLevels: 20 }
    );
var gsat = new OpenLayers.Layer.Google(
        "Google Satellite",
        { type: google.maps.MapTypeId.SATELLITE, numZoomLevels: 22 }
    );

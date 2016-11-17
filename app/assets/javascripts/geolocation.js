/*global $*/
/*global navigator*/
/*global html*/



$(document).ready(function()
{
    
    navigator.geolocation.getCurrentPosition(function(position)
    {
        $.simpleWeather(
        {
            location: position.coords.latitude + "," + position.coords.longitude,
            unit: 'f',
            success: function(weather) 
            {
              html = '<h2>'+weather.temp+'&deg;'+weather.units.temp+'</h2>';
              html += '<ul><li>'+weather.city+', '+weather.region+'</li>';
              html += '<li class="currently">'+weather.currently+'</li>';
              html += '<li>'+weather.alt.temp+'&deg;C</li></ul>';
              // for(var i=0;i<weather.forecast.length;i++) 
              for(var i=0;i<7;i++) 
              {
                html += '<p>'+weather.forecast[i].day+': '+weather.forecast[i].high+'</p>';
              }
          
              $("#weather").html(html);
            },
            
            error: function(error) 
            {
              $("#weather").html('<p>'+error+'</p>');
            }
        });
    })
});



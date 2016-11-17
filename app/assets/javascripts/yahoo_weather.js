$(document).ready(function()
{
  var callbackFunction = function(data) {
     var wind = data.query.results.channel.wind;
    alert(wind.chill);
  };
}

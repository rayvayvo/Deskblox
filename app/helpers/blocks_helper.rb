module BlocksHelper

  def type_check
    if Widget.find(1).source == "accuweather"
      weather = HTTP.get("#{Widget.find(1).body}")
      w = weather.parse


      if w['DailyForecasts'].first['Day']['IconPhrase'] == "T-Storms" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Cloudy w/ T-Storms" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Partly Sunny w/ T-Storms"

        w['Headline']['Category'] = "thunderstorm"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Showers"
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Dreary (Overcast)" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Cloudy w/ Showers" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Partly Sunny w/ Showers" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Rain"


        w['Headline']['Category'] = "rain"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Cloudy"
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Cloudy"

        w['Headline']['Category'] = "cloudy"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "PartlyCloudy"
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Partly Sunny" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Intermittent Clouds" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Hazy Sunshine" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Sunny"

        w['Headline']['Category'] = "partly_cloudy"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Sunny"
        w['Headline']['Category'] = "sunny"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Snow"
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Cloudy w/ Flurries" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Partly Sunny w/ Flurries" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Mostly Cloudy w/ Snow" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Flurries"

        w['Headline']['Category'] = "snow"
      return w

      elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Fog"
        w['Headline']['Category'] = "fog"
      return w

    elsif w['DailyForecasts'].first['Day']['IconPhrase'] == "Sleet"
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Ice" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Freezing Rain" ||
        w['DailyForecasts'].first['Day']['IconPhrase'] == "Rain and Snow"

        w['Headline']['Category'] = "sleet"
      return w


      end
    end
  end
end

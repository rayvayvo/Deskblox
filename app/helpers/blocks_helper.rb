module BlocksHelper

def type_check
  widget = Widget.where("name == ?", "weather")
  if widget.first.data_source == "accuweather"
    weather = HTTP.get("#{widget.first.data_url}").parse
    icon_phrase = weather['DailyForecasts'].first['Day']['IconPhrase'].downcase

    if icon_phrase == "t-storms" ||
      icon_phrase == "mostly cloudy w/ t-storms" ||
      icon_phrase == "partly sunny w/ t-storms"
      weather['Headline']['Category'] = "thunderstorm"

    elsif icon_phrase == "showers" ||
      icon_phrase == "dreary (overcast)" ||
      icon_phrase == "mostly cloudy w/ showers" ||
      icon_phrase == "partly sunny w/ showers" ||
      icon_phrase == "rain"
      weather['Headline']['Category'] = "rain"

    elsif icon_phrase == "cloudy" ||
      icon_phrase == "mostly cloudy"
      weather['Headline']['Category'] = "cloudy"

    elsif icon_phrase == "partly cloudy" ||
      icon_phrase == "partly sunny" ||
      icon_phrase == "intermittent clouds" ||
      icon_phrase == "hazy sunshine" ||
      icon_phrase == "mostly sunny"
      weather['Headline']['Category'] = "partly_cloudy"

    elsif icon_phrase == "sunny"
      weather['Headline']['Category'] = "sunny"

    elsif icon_phrase == "snow" ||
      icon_phrase == "mostly cloudy w/ flurries" ||
      icon_phrase == "partly sunny w/ flurries" ||
      icon_phrase == "mostly cloudy w/ snow" ||
      icon_phrase == "flurries"
      weather['Headline']['Category'] = "snow"

    elsif icon_phrase == "fog"
      weather['Headline']['Category'] = "fog"

    elsif icon_phrase == "sleet" ||
      icon_phrase == "ice" ||
      icon_phrase == "freezing rain" ||
      icon_phrase == "rain and snow"
      weather['Headline']['Category'] = "sleet"
    end
    return weather
  end
end

   def theme_1
    User.where(["email = ?" , current_user.email]).first.theme_id = 1
  end

  def theme_2
    User.where(["email = ?" , current_user.email]).first.theme_id = 2
  end

  def theme_3
    User.where(["email = ?" , current_user.email]).first.theme_id = 3
  end

  def theme_4
    User.where(["email = ?" , current_user.email]).first.theme_id = 4
  end

  def temp_f_to_c(temp_f)
    return ((temp_f - 32) * 0.5556).round
  end
end

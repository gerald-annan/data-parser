defmodule DateParser do
  def day() do
    # Please implement the day/0 function
    "[0-9]{1,2}"
  end

  def month() do
    # Please implement the month/0 function
    "[0-9]{1,2}"
  end

  def year() do
    # Please implement the year/0 function
    "[1-9][0-9]{3}"
  end

  @days ["^Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday$"]
  def day_names() do
    # Please implement the day_names/0 function
    "#{Enum.join(@days, "$|^")}"
  end

  @months ["^January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December$"]
  def month_names() do
    # Please implement the month_names/0 function
    "#{Enum.join(@months, "$|^")}"
  end

  @spec capture_day() :: String.t()
  def capture_day() do
    # Please implement the capture_day/0 function
    "(?<day>[0]?[1-9])"
  end

  @spec capture_month() :: String.t()
  def capture_month() do
    # Please implement the capture_month/0 function
    "(?<month>[0-1]?[0-9])"
  end

  def capture_year() do
    # Please implement the capture_year/0 function
    "(?<year>[1-9][0-9]{3})"
  end

  def capture_day_name() do
    # Please implement the capture_day_name/0 function
    "(?<day_name>#{day_names()})"
  end

  def capture_month_name() do
    # Please implement the capture_month_name/0 function
    "(?<month_name>#{month_names()})"
  end

  def capture_numeric_date() do
    # Please implement the capture_numeric_date/0 function
    "(?<day>#{day()})/(?<month>#{month()})/(?<year>#{year()})"
  end

  def capture_month_name_date() do
    # Please implement the capture_month_name_date/0 function
    "(?<month_name>#{Enum.join(@months, "|")}) (?<day>#{day()}), (?<year>#{year()})"
  end

  @months ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  def capture_day_month_name_date() do
    # Please implement the capture_day_month_name_date/0 function
    "(?<day_name>#{Enum.join(@days, "|")}), (?<month_name>#{Enum.join(@months, "|")}) (?<day>#{day()}), (?<year>#{year()})"
  end

  def match_numeric_date() do
    # Please implement the match_numeric_date/0 function
    Regex.compile!("^#{capture_numeric_date()}$")
  end

  def match_month_name_date() do
    # Please implement the match_month_name_day/0 function
    Regex.compile!("^#{capture_month_name_date()}$")
  end

  def match_day_month_name_date() do
    # Please implement the match_day_month_name_date/0 function
    Regex.compile!("^#{capture_day_month_name_date()}$")
  end
end

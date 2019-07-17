module MainHelper
    def emoji_flag_for_country(country)
        ISO3166::Country.find_country_by_name(country).emoji_flag
    end

    def country_code(country)
        ISO3166::Country.find_country_by_name(country).country_code
    end
end

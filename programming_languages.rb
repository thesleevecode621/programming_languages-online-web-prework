def reformat_languages(languages).to_a
  new_hash = {} 

  languages.map do |style, description|
    description.map do |lang, type|
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = type
        new_hash[lang][:style] = [style]
      end
    end
  end

  new_hash  
end

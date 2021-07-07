class TitleValidator < ActiveModel::Validator
    LANGUAGE = [/Guess/, /Top[0-9]/, /Secret/, /Won't Believe/]

    def validate(record)
        if !LANGUAGE.any? {|words| words.match(record.title)}
          record.errors.add :title, "must contain clickbait"
        end
      end
  end
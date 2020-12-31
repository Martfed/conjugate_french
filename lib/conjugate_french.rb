require 'conjugate_french/version'
require 'thor'
require 'json'
require 'terminal-table'

module ConjugateFrench
  class ConjugateCLI < Thor
    desc 'verbe VERB', 'finally know how to write french VERBS'
    TENSES = %w[indicatif subjonctif conditionnel impératif participe].freeze

    def verbe(verb)
      file = File.read('lib/verbs.json')
      parsed_file = JSON.parse(file)

      full_verb = parsed_file.select do |verb_list|
        verb_list['infinitif']['présent'][0] == verb
      end

      if full_verb.empty?
        puts 'The verb you entered was not found. There is probably a typo.'
      else
        TENSES.each { |tense| puts table(tense, full_verb, verb) }
      end
    end

    private

    def table(tense, full_verb, verb)
      tense_rows = persons(tense)

      tense_headings = headings(tense, full_verb)

      tense_rows.each_with_index do |person, index|
        full_verb[0][tense].each { |row| person << row[1][index] }
      end

      tense = Terminal::Table.new(
        title: "Verbe #{verb.capitalize} #{tense.capitalize}",
        rows: tense_rows,
        headings: tense_headings.flatten
      )
    end

    def persons(tense)
      if tense == 'impératif'
        [[nil], [nil], [nil]]
      elsif tense == 'participe'
        [[nil], [nil]]
      else
        [['Je'], ['Tu'], ['Il'], ['Nous'], ['Vous'], ['Ils']]
      end
    end

    def headings(tense, full_verb)
      [nil, full_verb[0][tense].keys]
    end
  end
end

require 'json'
require 'terminal-table'

module ConjugateFrench
  class Tense
    TENSES = %w[indicatif subjonctif conditionnel impératif participe].freeze
    VERB_ERROR = "The verb you've entered can not be conjugated".freeze
    TENSE_ERROR = "The verb can not be conjugated at the tense you've entered".freeze

    def self.conjugate(verb, tense)
      build_tables(get_verbe(verb), tense)
    end

    def self.build_tables(full_verb, specific_tense)
      raise ArgumentError, VERB_ERROR if full_verb.nil?

      if specific_tense.nil?
        TENSES.map { |tense| table(tense, full_verb) }
      else
        table(specific_tense, full_verb)
      end
    end

    def self.get_verbe(verb)
      file = File.read('lib/verbs.json')
      parsed_file = JSON.parse(file)
      @get_verbe ||= parsed_file.select do |verb_list|
        verb_list['infinitif']['présent'][0] == verb
      end[0]
    end

    def self.headings(tense, full_verb)
      raise ArgumentError, TENSE_ERROR unless TENSES.include?(tense)

      [nil, full_verb[tense].keys]
    end

    def self.table(tense, full_verb)
      tense_rows = persons(tense)
      verb = full_verb['infinitif']['présent'].first

      tense_rows.each_with_index do |person, index|
        full_verb[tense].each { |row| person << row[1][index] }
      end

      tense = Terminal::Table.new(
        title: "Verbe #{verb.capitalize} #{tense.capitalize}",
        rows: tense_rows,
        headings: headings(tense, full_verb).flatten
      )
    end

    def self.persons(tense)
      if tense == 'impératif'
        [[nil], [nil], [nil]]
      elsif tense == 'participe'
        [[nil], [nil]]
      else
        [['Je'], ['Tu'], ['Il'], ['Nous'], ['Vous'], ['Ils']]
      end
    end
  end
end

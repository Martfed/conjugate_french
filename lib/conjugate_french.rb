require 'conjugate_french/version'
require 'thor'
require_relative './conjugate/tense'

module ConjugateFrench
  class ConjugateCLI < Thor
    desc 'verbe VERB', 'finally know how to write french VERBS'
    argument :opts, optional: true, type: :hash

    def conjugate
      ConjugateFrench::Tense.conjugate(opts['verb'], opts['tense'])
    end
  end
end

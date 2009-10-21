$:.push File.expand_path(File.dirname(__FILE__))

module RTurk
  require 'rturk/logging'
  extend RTurk::Logging

  SANDBOX = 'http://mechanicalturk.sandbox.amazonaws.com/'
  PRODUCTION = 'http://mechanicalturk.amazonaws.com/'
  class << self
    attr_reader :access_key, :secret_key, :host

    def setup(access_key, secret_key, opts ={})
      @access_key = access_key
      @secret_key = secret_key
      @host = opts[:sandbox] ? SANDBOX : PRODUCTION
    end
    
    def sandbox?
      @host == SANDBOX
    end

  end

end

$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rturk/utilities'
require 'rturk/macros'
require 'rturk/parsers/answer_parser'
require 'rturk/requester'
require 'rturk/response'
require 'rturk/operation'
require 'rturk/builders/qualifications_builder'
require 'rturk/builders/qualification_builder'
require 'rturk/builders/question_builder'
require 'rturk/operations/create_hit'
require 'rturk/operations/get_assignments'
require 'rturk/responses/create_hit_response'
require 'rturk/responses/get_assignments_response'
require 'rturk/errors'
require 'rturk/xml_parse'

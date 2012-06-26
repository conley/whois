# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/property_contact_registrant_without_address.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.educause.edu.rb'

describe Whois::Record::Parser::WhoisEducauseEdu, "property_contact_registrant_without_address.expected" do

  before(:each) do
    file = fixture("responses", "whois.educause.edu/property_contact_registrant_without_address.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == nil
      @parser.registrant_contacts[0].name.should          == nil
      @parser.registrant_contacts[0].organization.should  == "Massachusetts Institute of Technology"
      @parser.registrant_contacts[0].address.should       == nil
      @parser.registrant_contacts[0].city.should          == "Cambridge"
      @parser.registrant_contacts[0].zip.should           == "02139"
      @parser.registrant_contacts[0].state.should         == "MA"
      @parser.registrant_contacts[0].country.should       == "UNITED STATES"
      @parser.registrant_contacts[0].country_code.should  == nil
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
    end
  end
end
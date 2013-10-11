# encoding: utf-8
require 'spec_helper'

describe "Word Count" do

  context "On a String" do
    it "should find 8 words" do
      str = "the brown fox jumped over the lazy dog"
      str.word_count.should == 8
    end

    it "should not crap out on special characters" do
      str = "the \"brown\" fox 'jumped' | over \\ the / lazy dog"
      str.word_count.should == 9
    end

    it "should not count HTML tags" do
      str = "<a href=\"http://thefamousfox.com\">the brown fox</a> jumped over the lazy dog"
      str.word_count.should == 9
    end
  end

  context "On a Hash" do
    it "should find 16 words" do
      h = { :one => "the brown fox jumped over the lazy dog", :other => "%{count} brown foxes jumped over the lazy dog" }
      h.word_count.should == 16
    end
  end
end
# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Totsuzennoshi" do
  describe "は" do
    it "突然の死を出す" do
      Totsuzennoshi.totsuzennoshi("突然の死").should eq("＿人人 人人＿\n＞ 突然の死 ＜\n￣Y^Y^Y^Y^Y￣\n")
    end

  end

end

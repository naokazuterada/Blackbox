# frozen_string_literal: true
require 'blackbox'
require 'thor'
require 'yaml'

# number: Uppercase
# symbol: Lowercase

module Blackbox
  # CLI tool for Blackbox game
  class CLI < Thor
    # def initialize(*args)
    #   super
    # end

    desc 'setup', 'Prepare to test. Define constants for the game.'
    def setup
      @a_num = [0, 1, 2, 3].sample
      @a_ope = ['+', '-', '*', '/'].sample
      @b_num = [0, 1, 2, 3].sample
      @b_ope = ['+', '-', '*', '/'].sample
      write_config
      say('Quiestion: ([INPUT-X] ? ?) + ([INPUT-Y] ? ?) = [RESULT]')
    end

    desc 'test INTEGER INTEGER', '答えだけ表示。'
    def test(a, b)
      read_config
      formula = "(#{a.to_i} #{@a_ope} #{@a_num}) + (#{b.to_i} #{@b_ope} #{@b_num})"
      say("(#{a.to_i} a A) + (#{b.to_i} b B) = #{eval formula}")
    end

    desc 'testd INTEGER INTEGER', '式と答えを表示。'
    def testd(a, b)
      read_config
      formula = "(#{a.to_i} #{@a_ope} #{@a_num}) + (#{b.to_i} #{@b_ope} #{@b_num})"
      say("#{formula} = #{eval formula}")
    end

    desc 'answer', '回答（答えを左から順に並べた文字列）。答えの表示。'
    def answer(answer)
      read_config
      ans = answer.strip
      if ans == @a_ope + @a_num.to_s + @b_ope + @b_num.to_s
        say('Good job!!')
      else
        say('Oh, no...')
        say("YOUR ANSWER: ([X] #{ans[0]} #{ans[1]}) + ([Y] #{ans[2]} #{ans[3]})")
      end
      say("ANSWER:      ([X] #{@a_ope} #{@a_num}) + ([Y] #{@b_ope} #{@b_num})")
    end

    private

    CONFIG_FILE = './.blackbox.conf'

    def write_config
      config = {}
      config['a_num'] = @a_num
      config['a_ope'] = @a_ope
      config['b_num'] = @b_num
      config['b_ope'] = @b_ope
      File.open(CONFIG_FILE, 'w') do |f|
        f.write config.to_yaml
      end
    end

    def read_config
      config = YAML.load_file(CONFIG_FILE)
      @a_num = config['a_num']
      @a_ope = config['a_ope']
      @b_num = config['b_num']
      @b_ope = config['b_ope']
    end
  end
end

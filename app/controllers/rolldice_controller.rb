class RolldiceController < ApplicationController

  def home
    render({ :template => "layouts/home" })
  end
  
  def twosix
    @rolls = []

    2.times do
      die = rand(1..6)
  
      @rolls.push(die)
    end

    render({ :template => "layouts/two_six" })

  end

  def twoten
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end

    render({ :template => "layouts/two_ten" })

  end

  def onetwenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end

    render({ :template => "layouts/one_twenty" })
  end

  def fivefour
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end

    render({ :template => "layouts/five_four" })
  end

  def flexible
    @rolls = []
    @numdice = (params.fetch("numberofdice").to_i)
    @numsides = (params.fetch("numberofsides").to_i)
    @numdice.times do
      die = rand(1..@numsides)

      @rolls.push(die)
    end

    render({ :template => "layouts/flexible" })
  end
end

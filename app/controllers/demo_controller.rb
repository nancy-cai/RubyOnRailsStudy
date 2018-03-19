class DemoController < ApplicationController

  # call the index action, but render the demo/hello template
  def index
    render('hello')
  end

  def Hello
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    redirect_to('http://www.lynda.com')
  end
end

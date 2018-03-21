class DemoController < ApplicationController

  # call the index action, and render the demo/index template
  def index
    @number_array=[1,2,3]
    render('index')
  end

  def hello
    @id=params[:id]
    @page=params['page']
    render('hello')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    redirect_to('http://www.lynda.com')
  end
end

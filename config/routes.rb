Rails.application.routes.draw do
  get("/dice/2/6", { :controller => "rolldice", :action => "rock" })

  get("/dice/2/10", { :controller => "rolldice", :action => "paper" })

  get("/dice/1/20", { :controller => "rolldice", :action => "scissors" })

  get("/dice/5/4", { :controller => "rolldice", :action => "scissors" })

  get("/", { :controller => "rolldice", :action => "home"})

end

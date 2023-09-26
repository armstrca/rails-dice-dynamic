Rails.application.routes.draw do
  get("/dice/2/6", { :controller => "rolldice", :action => "twosix" })

  get("/dice/2/10", { :controller => "rolldice", :action => "twoten" })

  get("/dice/1/20", { :controller => "rolldice", :action => "onetwenty" })

  get("/dice/5/4", { :controller => "rolldice", :action => "fivefour" })

  get("/dice/:numberofdice/:numberofsides", { :controller => "rolldice", :action => "flexible" })

  get("/", { :controller => "rolldice", :action => "home"})

end

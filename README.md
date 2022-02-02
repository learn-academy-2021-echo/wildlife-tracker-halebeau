# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Rails API

Just the M&C
NO views" Just data

$ rails new wildlife-tracker -d postregsql -T
$ cd wildlife-tracker
$ git remote add origin https://github.com/learn-academy-2021-echo/wildlife-tracker-halebeau
$ git checkout -b main
$ git add .
$ git commit -m "initial commit"
$ git push origin main

# App setup

$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install
$ rails server

Model and Controller
Animal - common name, latin name, kingdom
Sighting - date:datetime longitude:float latitude:float 

rails g resource Animal common_name:string latin_name:string kingdom:string
- model
- controller
- spec files
- restful routes

Using Postman to visualize data output
Headers tab - key: content-type, value: application/json
Go back to 'params' tab

INDEX
- controller
```
    def index
        animals = Animal.all
        render json: animals
    end
```

SHOW
- controller
```
    def show
        animal = Animal.find(params[:id])
        render json: animal
    end
```

CREATE
- controller
- Add 'skip_before_action :verify_authenticity_token' to application_controller.rb
```
    def create
        animal = Animal.create(animal_params)
        if animal.valid?
            render json: animal
        else
            render json: animal.errors
        end
    end
```

UPDATE
- controller
```
    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json: animal
        else
            render json: animal.errors
        end
    end
```

DESTROY
- controller
```
    def destroy
        animal = Animal.find(params[:id])
        if animal.destroy
            render json: animal
        else
            render json: animal.errors 
        end
    end
```

```
private
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
end
```

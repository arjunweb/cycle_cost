# Cycle Cost Project

To setup the project pull the code from repository.

Pre-requisites:
Python 3.X Installed

Execute the following commands in terminal (windows)

    virtualenv env
    env\Scripts\activate
    pip install -r requirements.txt
    
    Navigate to app root folder (cycle consists manage.py file)
    python manage.py makemigrations
    python manage.py migrate
    python manage.py runserver localhost:8000
    
    
  Check API response in postman
  
  URL: localhost:8000/get_cycle_cost/ 
  Method POST
  
  Params: 
  
  {
	
	"part_names":[1,4,6]
}

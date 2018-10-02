# simple_cms_rails
A dummy rails application using Docker.
Creates a ruby and MySQL container to run the application.

First checkout the repo and navigate to the root folder.

1. To run the application, first build the Docker image
``` docker-compose build ```
This will checkout the Ruby image and copy over the application files to the image.

2. Then we will build the container from the image, which will house the Rails application and MySQL server
``` docker-compose up ```

3. To run the application, we will need to set-up the data in the database.
In a separate terminal window, run
``` docker-compose run app rake db:migrate ```

Unless there was an error in step 2 or 3, the application should be up and running and can be accessed from the browser.

Depending upon the OS you are running, you can run <host>:3000
<host> => 
*nix based system : localhost
Windows systems : Docker VM IP. Can be obtained by running 'docker-machine ip' on terminal
Hello
/////////////////////////
Admin id: admin123@gmail.com
Admin password: admin123
////////////////////////////////
Admin id: admin1@gmail.com
Admin password: admin345
////////////////////////////////////
Admin id: admin2@gmail.com
Admin password: admin456
///////////////////////////////
Superadmin id: superadmin123@gmail.com
Superadmin password: superadmin123
////////////////////////////////
Superadmin id: superadmin1@gmail.com
Superadmin password: superadmin1
////////////////////////////////
Superadmin id: superadmin2@gmail.com
Superadmin password: superadmin2
////////////////////////////////
The app is deployed on Heroku and will work once you open the link of the app

https://quiet-castle-37619.herokuapp.com/

Once the app runs, you will be asked to sign up first, and after completing that, you can access the car rental portal.

Here you will see a list of cars available, which you can reserve depending on constraints based on availabilty and requirement of user
You can search a car based on keywords
Once you pick an avaiable car, you can click on the reservation option on the rightmost side.

After you click here, you can give 3 times based on your reserve time, your car checkout time and your car return time.

If available for that time, the system will confirm the specifc reservation, and you are good to go.
----------------------------------------------------------
ADMIN-
An admin can add,delete,update a user and other admin and can also book a car for an user. An admin can only view a superadmin.
Admin
An admin user will have the following attributes: email (unique for each admin), name and password.
All admins can perform the following tasks:
Log in with an email and password
Edit their own profile
Manage admins
Create new admins
View the list of all the admins and their profile details (except password)
Delete admins (except themselves and the superadmins)
Manage Cars
Add a Car to the system. A Car will have the following attributes: 
License-plate number (a 7-digit string unique for each Car)
Manufacturer
Model (String  … this app doesn’t need to validate that the model is actually produced by the indicated manufacturer.)
Hourly Rental rate 
Style (Coupe, Sedan or SUV)
Location (office where the car can be picked up)
Status to indicate availability:
Checked out - when a customer checks out the car or an admin checks out the car on behalf of a customer
Available - otherwise
View the list of all Cars
View the attributes of a Car. Also, show the user who has the car if its status is “Checked out” or “Reserved”.
Edit the attributes of a Car 
An admin can also change the status of a car i.e., she/he can reserve, check out or return a car on behalf of a customer. 
When an admin reserves, checks out or returns a car on behalf of a customer, the information captured in your database should be the same as if the car was reserved or checked out by a customer..
An admin can edit a reservation on behalf of a customer.
View the checkout history of a car.
Delete a car from the system
Manage customers
List all customers and profile attributes (except password), with an option to edit a particular customer
View the checkout history of a customer
Delete a customer
----------------------------------------------------------
SUPERADMIN-
A superadmin can add,delete,update a superadmin,user,admin and can also book a car for a user
Create new superadmins
View the list of superadmins and their profile details (except password)
Should not be able to delete other superadmins.

--------------------------------------------------------
User

A customer will have the following attributes: email (unique for each member), name and password and rental charge. The rental charge is computed from (rental rate ? the number of hours the customer held the car)

Anyone can sign up as a customer using their email, name and password. After signup, they can perform the following tasks:

Log in with email and password
Edit their own profile
Search cars using location or model or manufacturer or style or status
search results should be a list of cars matching the search criteria
View the attributes of a car
Reserve or check out a car if its status is “Available”, and, as part of both operations, specify a return time car.
Return a checked-out car
View their own checkout history
------------------------------------------------------
We have tested the cars controller and model extensively using these cases

test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { license: @car.license, location: @car.location, manufac: @car.manufac, model: @car.model, rent_rate: @car.rent_rate, status: @car.status, style: @car.style } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { license: @car.license, location: @car.location, manufac: @car.manufac, model: @car.model, rent_rate: @car.rent_rate, status: @car.status, style: @car.style } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end
----------------------------------------------------
Deployment
Please ensure that your deployment is always accessible for grading. You can deploy your app to any of the following.

Heroku or any similar PaaS (OpenShift etc) with free plans
Amazon AWS
Bonus (Extra Credit)
You can do any or all of the below for extra credit (each item below is worth 5 points).

If a car has status “Checked out”, then a customer can register to receive a notification email when the car becomes available.
A customer can suggest a new car to be added to the system. An admin can view and approve the suggestions. An admin should be able to edit car attributes during the approval process. After approval, the car becomes available in the system.
---------------------------------------------------------
Edge Cases:-
1) reservation attached to the car will remain in the checkout history of the user if the admin deletes a car.	
2) If a car is delted from the system that is alreay reserved, the admin won't be able to delete a car at this time until it is returned.
3) A user who has checkout a car cannt be deleted by an admin untill he return that car
Hello
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
----------------------------------------------------------
SUPERADMIN-
A superadmin can add,delete,update a superadmin,user,admin and can also book a car for a user
--------------------------------------------------------

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

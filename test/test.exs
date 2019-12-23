#This test should not pass but it is. 1908 was a leap year but FB is not accounting for that. 

      test "Leap Year" do
    navigate_to "http://facebook.com"
    IO.inspect 
        firstname = find_element(:name, "firstname")
        firstname |> fill_field("Jimmy")
        lastname = find_element(:name, "lastname")
        lastname |> fill_field("Stewart")
        mobileNumberOrEmail = find_element(:aria-label, "Mobile number or email")
        mobileNumberOrEmail |> fill_field('+14798689762')
        newPassword = find_element(:aria-label, "New password")
        newPassword |> fill_field('something secure')
        month = find_within_element(:id, "month")
        month |> fill_field('2')
        day = find_within_element(:id, "day")
        day |> fill_field('30')
        year = find_within_element(:id, "year")
        year |> fill_field('1908')
        sex= find_element(:type, "radio")
        sex |> fill_field('1')
    end
end

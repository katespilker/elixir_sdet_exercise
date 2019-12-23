form = find_element(:id, "login")
username = find_within_element(form, :id, "username")
submit = find_within_element(form, :class, "btn-lg")

//xpath
alert = find_all_elements(:tag, "p") |> Enum.find(&(has_class?(&1, "alert-danger")))
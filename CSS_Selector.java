While CSS selector and XPath are popular among Selenium users, CSS selector is highly recommended over XPath due to its simplicity, speed, and performance.

The following are the list of object identifier or locators supported by selenium.

id
Name
Linktext
Partial Linktext
Tag Name
class name
Css
xpath               

cssSelector()


Finding elements using the Class Selector

 While finding elements using the CSS selector, we can use the Class attribute to locate an element. This can be done by specifying the type of HTML tag, and then adding a dot followed by the value of the class attribute in the following way:
e.g. driver.findElement (By.cssSelector ("input.login"));


Finding elements using the ID Selector

We can locate the element using the IDs assigned to elements. This can be done by specifying the type of HTML tag, then entering a hash followed by the value of the Class attribute, as shown:
e.g. driver.findElement (By.cssSelector ("input#username"));

There is also a shortcut where you can enter # and a class attribute value and ignore the HTML tag.
e.g. driver.findElement (By.cssSelector ("#username"));


^=	input[id^='ctrl']	
Starting with: For example, if the ID of an element is ctrl_12, this will locate and return elements with ctrl at the beginning of the ID.

$=	input[id$='_userName']	
Ending with: For example, if the ID for an element is a_1_userName, this will locate and return elements with _userName at the end of the ID.

*=	Input[id*='userName']	
Containing: For example, if the ID of an element is panel_login_userName_textfield, this will use the userName part in the middle to match and locate the element.

 




function required()
{
var emptmail = document.forms["form1"]["emailid"].value;
var emptpass = document.forms["form1"]["password"].value;
if (emptmail == "" || emptpass == "" )
{
alert("Please input a Value credentials");
return false;
}

}
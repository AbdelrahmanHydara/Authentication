import 'package:get/get.dart';

validInput({
  required String value,
  required String type,
  required int min,
  required int max,
})
{
  if(value.isEmpty)
  {
    return "Can't be Empty";
  }

  if(type == 'username')
  {
    if(!GetUtils.isUsername(value))
    {
      return 'Please enter your name';
    }
  }

  if(type == 'email')
  {
    if(!GetUtils.isEmail(value))
    {
      return 'Please enter some text';
    }
  }

  if(type == 'password')
  {
    if(!GetUtils.isNum(value))
    {
      return 'Please enter long password';
    }
  }

  if(type == 'phone')
  {
    if(!GetUtils.isPhoneNumber(value))
    {
      return 'Please enter phone number';
    }
  }

  if(value.length < min)
  {
    return "Can't be less than $min";
  }

  if(value.length > max)
  {
    return "Can't be less than $max";
  }

}
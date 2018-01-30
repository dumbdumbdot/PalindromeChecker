public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a = noSpace(word);
  String a2 = onlyLetter(a);
  String a3 = noCaps(a2);
  System.out.println(a3);
  System.out.println(reverse(a3));
  if(reverse(a3).equals(a3) == true)
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
  {
      sNew = sNew + str.substring(i, i+1);
  }
    return sNew;
}

public String noSpace(String e)
{
  String q = new String();
  for(int i = 0; i < e.length(); i++)
  {
    if(e.substring(i, i+1).equals(" ") == false)
    {
      q = q + e.substring(i, i+1);
    }
  }
  return q;
}

public String onlyLetter(String b)
{
  String x = new String();
  for(int i = 0; i < b.length(); i++)
  {
    if(Character.isLetter(b.charAt(i)) == true)
    {
      x = x + b.charAt(i);
    }
  }
  return x;
  
}

public String noCaps(String r)
{
  return r.toLowerCase();
}
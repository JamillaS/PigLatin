import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++)
		if(sWord.substring(0,2).equalsIgnoreCase("qu"))
		{
			return i;
		}
		else if(sWord.substring(i,i+1).equalsIgnoreCase("a"))
			return i;
	
		else if(sWord.substring(i,i+1).equalsIgnoreCase("e"))
			return i;
	
		else if(sWord.substring(i,i+1).equalsIgnoreCase("i"))
			return i;
	
		else if(sWord.substring(i,i+1).equalsIgnoreCase("o"))
			return i;
	
		else if(sWord.substring(i,i+1).equalsIgnoreCase("u"))
			
			return i;
		

	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		if(sWord.substring(0,2).equalsIgnoreCase("qu"))
		{
			return sWord.substring(2) + "quay";
		}
		else
			return sWord + "way";
	}
	for(int i = 1; i < sWord.length(); i++)
	{
		if(findFirstVowel(sWord) == i)
		{
			return sWord.substring(i) + sWord.substring(0,i) + "ay";
		}
	}
	return "ERROR!";
	
	

	/*
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		if(sWord.substring(0,2).equals("qu"))
		{
			return sWord.substring(2) + "quay";
		}
		else
			return sWord + "way";
	}
	else if(findFirstVowel(sWord) == 1)
	{	
		return sWord.substring(1) + sWord.substring(0,1) + "ay";
	}
	else if(findFirstVowel(sWord) == 2)
	{
		return sWord.substring(2) + sWord.substring(0,2) + "ay";
	}
	else if(findFirstVowel(sWord) == 3)
	{
		return sWord.substring(3) + sWord.substring(0,3) + "ay";
	}
	else
	{
		return "ERROR!";
	}
	*/
	
}

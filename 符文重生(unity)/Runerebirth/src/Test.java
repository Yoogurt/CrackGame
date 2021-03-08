
public class Test {
	
	public static void main(String[] args) {
//		addGem(10);
//		PlayerPrefs.close();
	//	System.out.println(0x3b9ac9ff);
		EncryptedPlayerPrefs.SetInt("GAME_DATA_GEM" , 500500);
		System.out.println();
		EncryptedPlayerPrefs.SetInt("GAME_DATA_GOLD" , 500500);
		System.out.println();
		EncryptedPlayerPrefs.SetInt("GAME_DATA_SHARD" , 500500);
//		System.out.println(EncryptedPlayerPrefs.GetInt("GAME_DATA_GEM" , 0));
//		EncryptedPlayerPrefs.mCheck("GAME_DATA_SHARD", 9999, 0);
		PlayerPrefs.close();
	}
	
	  public static void addGem(int amount)
	    {
	        int num = getGem() + amount;
	        if (num < 0)
	        {
	            num = 0;
	        }
	        int num2 = num;
	        if (num2 > 0x3b9ac9ff)
	        {
	            num2 = 0x3b9ac9ff;
	        }
	        EncryptedPlayerPrefs.SetInt("GAME_DATA_GEM", num2);
	    }
	  
	  public static int getGem()
	    {
	        return EncryptedPlayerPrefs.GetInt("GAME_DATA_GEM");
	    }

}

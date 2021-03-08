import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptedPlayerPrefs {
	public static String[] keys = new String[] { "udre23Wr", "upHaSP9D",
			"rAS3frA5", "2eprtHat", "eDAsjaw3" };
	private static String privateKey = "Rach3gexaDr9ETrEsWaF";

	public static boolean CheckEncryption(String key, String type, String value) {
		int mInt = PlayerPrefs.GetInt(key + "_used_key");
		if (mInt < 0)
			mInt = 0;
		String str = keys[mInt];
		String str2 = Md5(key + "_" + type + "_" + privateKey + "_" + str + "_"
				+ value);
		if (!PlayerPrefs.HasKey(key + "_encryption_check")) {
			return false;
		}
		return (PlayerPrefs.GetString(key + "_encryption_check") == str2);
	}

	public static void DeleteKey(String key) {
		PlayerPrefs.DeleteKey(key);
		PlayerPrefs.DeleteKey(key + "_encryption_check");
		PlayerPrefs.DeleteKey(key + "_used_key");
	}

	public static float GetFloat(String key) {
		return GetFloat(key, 0f);
	}

	public static float GetFloat(String key, float defaultValue) {
		float mFloat = PlayerPrefs.GetFloat(key);
		if (!CheckEncryption(key, "float", Math.floor(mFloat * 1000f) + "")) {
			return defaultValue;
		}
		return mFloat;
	}

	public static int GetInt(String key) {
		return GetInt(key, 0);
	}

	public static int GetInt(String key, int defaultValue) {
		int mInt = PlayerPrefs.GetInt(key);
		if (!CheckEncryption(key, "int", mInt + "")) {
			return defaultValue;
		}
		return mInt;
	}

	public static String GetString(String key) {
		return GetString(key, "");
	}

	public static String GetString(String key, String defaultValue) {
		String str = PlayerPrefs.GetString(key);
		if (!CheckEncryption(key, "String", str)) {
			return defaultValue;
		}
		return str;
	}

	public static boolean HasKey(String key) {
		return PlayerPrefs.HasKey(key);
	}

	public static String getMD5(byte[] info) {
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			md5.update(info);
			byte[] encryption = md5.digest();

			StringBuffer strBuf = new StringBuffer();
			for (int i = 0; i < encryption.length; i++) {
				if (Integer.toHexString(0xff & encryption[i]).length() == 1) {
					strBuf.append("0").append(
							Integer.toHexString(0xff & encryption[i]));
				} else {
					strBuf.append(Integer.toHexString(0xff & encryption[i]));
				}
			}

			return strBuf.toString();
		} catch (NoSuchAlgorithmException e) {
			return "";
		}
	}

	public static String Md5(String strToEncrypt) {
		byte[] bytes = strToEncrypt.getBytes(Charset.forName("UTF-8"));
		return getMD5(bytes);
	}

	public static void SaveEncryption(String key, String type, String value) {
		int index = (int) Math.floor(Math.random() * keys.length);
		String str = keys[index];
		String str2 = Md5(key + "_" + type + "_" + privateKey + "_" + str + "_"
				+ value);
		PlayerPrefs.SetString(key + "_encryption_check", str2);
		PlayerPrefs.SetInt(key + "_used_key", index);
	}

	public static void mCheck(String key, String value, int index) {

		String str = keys[index];
		String str2 = Md5(key + "_" + "String" + "_" + privateKey + "_" + str
				+ "_" + value);

		System.out.println("(" + key + "_encryption_check) -> " + str2);
		System.out.println("(" + key + "_used_key) -> " + index);
	}

	public static void mCheck(String key, int value, int index) {

		String str = keys[index];
		String str2 = Md5(key + "_" + "int" + "_" + privateKey + "_" + str
				+ "_" + value);

		System.out.println("(" + key + "_encryption_check) -> " + str2);
		System.out.println("(" + key + "_used_key) -> " + index);
	}

	public static void mCheck(String key, float value, int index) {

		String str = keys[index];
		String str2 = Md5(key + "_" + "float" + "_" + privateKey + "_" + str
				+ "_" + value);

		System.out.println("(" + key + "_encryption_check) -> " + str2);
		System.out.println("(" + key + "_used_key) -> " + index);
	}

	public static void SetFloat(String key, float value) {
		PlayerPrefs.SetFloat(key, value);
		SaveEncryption(key, "float", Math.floor(value * 1000f) + "");
	}

	public static void SetInt(String key, int value) {
		PlayerPrefs.SetInt(key, value);
		SaveEncryption(key, "int", value + "");
	}

	public static void SetString(String key, String value) {
		PlayerPrefs.SetString(key, value);
		SaveEncryption(key, "String", value);
	}
}

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.stream.FileImageInputStream;

@SuppressWarnings("unchecked")
public class PlayerPrefs {

	static Map<String, Object> internalMap;

	static {

		try {
			ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
					new File("C:\\Users\\国斌\\Desktop\\test.txt")));

			internalMap = (Map<String, Object>) ois.readObject();
			ois.close();

		} catch (Exception e) {
			internalMap = new HashMap<String, Object>();
		}

	}

	public static int GetInt(String key) {
		System.out.println("Getting Int key -> " + key + " | result -> "
				+ internalMap.get(key));
		if (internalMap.get(key) != null)
			return (int) internalMap.get(key);
		return -1;
	}

	public static float GetFloat(String key) {
		System.out.println("Getting Float key -> " + key + " | result -> "
				+ internalMap.get(key));
		return (float) internalMap.get(key);
	}

	public static String GetString(String key) {
		System.out.println("Getting String key -> " + key + " | result -> "
				+ internalMap.get(key));
		return (String) internalMap.get(key);
	}

	public static void DeleteKey(String key) {
		System.out.println("Delete Key -> " + key);
		internalMap.remove(key);
	}

	public static boolean HasKey(String key) {
		System.out.println("HasKey Key -> " + key + " | result -> "
				+ internalMap.containsKey(key));
		return internalMap.containsKey(key);
	}

	public static void SetString(String key, String value) {
		System.out.println("Setting String , key -> " + key + " | value -> "
				+ value);
		internalMap.put(key, value);
	}

	public static void SetInt(String key, int value) {
		System.out.println("Setting Int , key -> " + key + " | value -> "
				+ value);
		internalMap.put(key, value);
	}

	public static void SetFloat(String key, float value) {
		System.out.println("Setting Float , key -> " + key + " | value -> "
				+ value);
		internalMap.put(key, value);
	}

	public static void close() {
		File file = new File("C:\\Users\\monitor\\Desktop\\test.txt");
		if (file.exists() == false)
			try {
				file.createNewFile();
			} catch (IOException e) {
				return;
			}

		try {
			ObjectOutputStream oos = new ObjectOutputStream(
					new FileOutputStream(file));

			oos.writeObject(internalMap);

			oos.flush();
			oos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

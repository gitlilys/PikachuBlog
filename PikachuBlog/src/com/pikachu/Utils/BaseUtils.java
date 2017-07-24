package com.pikachu.Utils;

import java.util.UUID;

public class BaseUtils {

	public static String getUUID() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	
}

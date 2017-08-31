import java.util.Base64;

public class UTL_ENCODE {

	public static byte[] BASE64_ENCODE(byte[] in) {
		return Base64.getEncoder().encode(in);
	}

	public static byte[] BASE64_DECODE(byte[] in) {
		return Base64.getDecoder().decode(in);
	}

}

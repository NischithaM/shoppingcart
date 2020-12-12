package com.cruds.exception;

public class NCException extends RuntimeException {
	private String info;
		
		public NCException(String info)
		{
			this.info=info;
		}

		public String getInfo() {
			return info;
		}

}

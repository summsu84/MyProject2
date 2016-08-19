package com.my.app.vo;

public class DailyNSInfoVO {

	/**
	 *  Reg_Date
	 */
	private String regDate;
	/**
	 * NS Code
	 *  */
	private String nsCode;
	/**
	 *  NS_NAME
	 */
	private String nsCodeName;
	
	/**
	 *  NS_QUANTITY
	 */
	private String nsQuantity;
	
	/**
	 *  NS_CONTENT
	 */
	private String nsContent;
	
	/**
	 * 알림 설정
	 *  NS_NOTIFY
	 */
	private String nsNotify;
	
	/**
	 * 알림 설정 정보
	 * NS_NOTIFY_DESC
	 */
	private String nsNotifyDesc;

	
	public String getNsCode() {
		return nsCode;
	}

	public void setNsCode(String nsCode) {
		this.nsCode = nsCode;
	}

	public String getNsCodeName() {
		return nsCodeName;
	}

	public void setNsCodeName(String nsCodeName) {
		this.nsCodeName = nsCodeName;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getNsQuantity() {
		return nsQuantity;
	}

	public void setNsQuantity(String nsQuantity) {
		this.nsQuantity = nsQuantity;
	}

	public String getNsContent() {
		return nsContent;
	}

	public void setNsContent(String nsContent) {
		this.nsContent = nsContent;
	}

	public String getNsNotify() {
		return nsNotify;
	}

	public void setNsNotify(String nsNotify) {
		this.nsNotify = nsNotify;
	}

	public String getNsNotifyDesc() {
		return nsNotifyDesc;
	}

	public void setNsNotifyDesc(String nsNotifyDesc) {
		this.nsNotifyDesc = nsNotifyDesc;
	}

	@Override
	public String toString() {
		return "DailyNSInfoVO [regDate=" + regDate + ", nsCode=" + nsCode
				+ ", nsCodeName=" + nsCodeName + ", nsQuantity=" + nsQuantity
				+ ", nsContent=" + nsContent + ", nsNotify=" + nsNotify
				+ ", nsNotifyDesc=" + nsNotifyDesc + "]";
	}

	
}

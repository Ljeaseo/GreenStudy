package org.wow.model;

public class AttachFileVO {
	// 파일이 저장되어 있는 경로
	private String uploadPath;	// 2022\\08\\24
	// 업로드된 파일명
	private String fileName;	// Google__G__Logo.svg
	// UUID
	private String uuid;	//4dc8e41a-66aa-47fc-a447-83177afaaa24_
	// 업로드된 파일이 이미지파일인지 아닌지
	private boolean imageType;	//private boolean checkImageType
	
	
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean isImageType() {
		return imageType;
	}
	public void setImageType(boolean imageType) {
		this.imageType = imageType;
	}
	
	
	@Override
	public String toString() {
		return "AttachFileVO [uploadPath=" + uploadPath + ", fileName=" + fileName + ", uuid=" + uuid + ", imageType="
				+ imageType + "]";
	}
}
	
	
	
	

package BEAN;

public class LopHoc {
	private int LopID;
	public int getLopID() {
		return LopID;
	}
	public void setLopID(int lopID) {
		LopID = lopID;
	}
	public String getTenLop() {
		return TenLop;
	}
	public void setTenLop(String tenLop) {
		TenLop = tenLop;
	}
	public String getTenGiangVien() {
		return TenGiangVien;
	}
	public void setTenGiangVien(String tenGiangVien) {
		TenGiangVien = tenGiangVien;
	}
	private String TenLop;
	private String TenGiangVien;
	
}

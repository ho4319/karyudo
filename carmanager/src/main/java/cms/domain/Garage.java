package cms.domain;

public class Garage {
  protected int myCarNo;
  protected int modelNo;
  protected int memberNo;
  protected String nickName;
  protected int mile;
  
  public Garage() {
   
  }
  
  
  @Override
  public String toString() {
    return "Garage [myCarNo=" + myCarNo + ", modelNo=" + modelNo + ", memberNo=" + memberNo + ", nickName=" + nickName
        + ", mile=" + mile + "]";
  }

  public int getMyCarNo() {
    return myCarNo;
  }

  public void setMyCarNo(int myCarNo) {
    this.myCarNo = myCarNo;
  }

  public int getModelNo() {
    return modelNo;
  }

  public void setModelNo(int modelNo) {
    this.modelNo = modelNo;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public String getNickName() {
    return nickName;
  }

  public void setNickName(String nickName) {
    this.nickName = nickName;
  }

  public int getMile() {
    return mile;
  }

  public void setMile(int mile) {
    this.mile = mile;
  }
  
  
  
  
}

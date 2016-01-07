package cms.domain;

import java.io.Serializable;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;
  
  protected int     memberNo;
  protected String  email;
  protected String  nickName;
  protected String  password;
  protected String  memberPhoto;
  protected int     grade;
  
  public Member() {}

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getNickName() {
    return nickName;
  }

  public void setNickName(String nickName) {
    this.nickName = nickName;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getMemberPhoto() {
    return memberPhoto;
  }

  public void setMemberPhoto(String memberPhoto) {
    this.memberPhoto = memberPhoto;
  }

  public int getGrade() {
    return grade;
  }

  public void setGrade(int grade) {
    this.grade = grade;
  }

  @Override
  public String toString() {
    return "Member [memberNo=" + memberNo + ", email=" + email + ", nickName=" + nickName + ", password=" + password
        + ", memberPhoto=" + memberPhoto + ", grade=" + grade + "]";
  }
}
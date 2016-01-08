package cms.domain;

import java.sql.Date;

public class Refuel {
  protected int refuelNo;
  protected int myCarNo;
  protected Date refuelDate;
  protected int mile;
  protected int cost;
  protected float liter;
  
  public Refuel() {
   
  }
  
  @Override
  public String toString() {
    return "Refuel [refuelNo=" + refuelNo + ", myCarNo=" + myCarNo + ", refuelDate=" + refuelDate + ", mile=" + mile
        + ", cost=" + cost + ", liter=" + liter + "]";
  }

  public int getRefuelNo() {
    return refuelNo;
  }

  public void setRefuelNo(int refuelNo) {
    this.refuelNo = refuelNo;
  }

  public int getMyCarNo() {
    return myCarNo;
  }

  public void setMyCarNo(int myCarNo) {
    this.myCarNo = myCarNo;
  }

  public Date getRefuelDate() {
    return refuelDate;
  }

  public void setRefuelDate(Date refuelDate) {
    this.refuelDate = refuelDate;
  }

  public int getMile() {
    return mile;
  }

  public void setMile(int mile) {
    this.mile = mile;
  }

  public int getCost() {
    return cost;
  }

  public void setCost(int cost) {
    this.cost = cost;
  }

  public float getLiter() {
    return liter;
  }

  public void setLiter(float liter) {
    this.liter = liter;
  }
  
}

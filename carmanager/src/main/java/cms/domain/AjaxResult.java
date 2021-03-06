package cms.domain;

public class AjaxResult {
  protected String status;
  protected Object data;
  
  public AjaxResult() {

  }
  
  public AjaxResult(String status, Object data) {
    this.status = status;
    this.data = data;
  }
  
  @Override
  public String toString() {
    return "AjaxResult [status=" + status + ", data=" + data + "]";
  }
  
  public String getStatus() {
    return status;
  }
  public AjaxResult setStatus(String status) {
    this.status = status;
    return this;
  }
  public Object getData() {
    return data;
  }
  public AjaxResult setData(Object data) {
    this.data = data;
    return this;
  }
  
}
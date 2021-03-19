package teamproject.mvc.vo;

public class MembersVO {

    private String uno;
    private String username;
    private String email;
    private String passwd;
    private String phone;
    private String alarm;
    private String sticker;     // 스티커
    private String points;      // 보유 현금
    private String buylist;     // 구매 목록
    private String buyamounts;  // 구매 갯수
    private String wishlist;    // 장바구니
    private String lastview;
    private String addr;
    private String zipcode;
    private String catno;


    public MembersVO() {
    }

    public MembersVO(String uno, String username, String email,
                     String passwd, String phone, String alarm, String sticker,
                     String points, String buylist, String buyamounts, String wishlist,
                     String lastview, String addr, String zipcode) {
        this.uno = uno;
        this.username = username;
        this.email = email;
        this.passwd = passwd;
        this.phone = phone;
        this.alarm = alarm;
        this.sticker = sticker;
        this.points = points;
        this.buylist = buylist;
        this.buyamounts = buyamounts;
        this.wishlist = wishlist;
        this.lastview = lastview;
        this.addr = addr;
        this.zipcode = zipcode;
    }

    public String getCatno() {
        return catno;
    }

    public void setCatno(String catno) {
        this.catno = catno;
    }
    public String getUno() {
        return uno;
    }

    public void setUno(String uno) {
        this.uno = uno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAlarm() {
        return alarm;
    }

    public void setAlarm(String alarm) {
        this.alarm = alarm;
    }

    public String getSticker() {
        return sticker;
    }

    public void setSticker(String sticker) {
        this.sticker = sticker;
    }

    public String getPoints() {
        return points;
    }

    public void setPoints(String points) {
        this.points = points;
    }

    public String getBuylist() {
        return buylist;
    }

    public void setBuylist(String buylist) {
        this.buylist = buylist;
    }

    public String getBuyamounts() {
        return buyamounts;
    }

    public void setBuyamounts(String buyamounts) {
        this.buyamounts = buyamounts;
    }

    public String getWishlist() {
        return wishlist;
    }

    public void setWishlist(String wishlist) {
        this.wishlist = wishlist;
    }

    public String getLastview() {
        return lastview;
    }

    public void setLastview(String lastview) {
        this.lastview = lastview;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

}
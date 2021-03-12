package teamproject.mvc.vo;

public class ProductsVO {


    private String pno;         // 제품번호
    private String cate;        // 203 = 2번째 카테고리의 3번째 카테고리
    private String brand;
    private String event;       // 1 = 기획전, 2 = 노하우, 3 = 오늘의 딜
    private String pname;       // 제품명
    private String type;
    private String price;       // 가격
    private String disco;       // 할인율
    private String totprice;    // 총금액
    private String amount;      // 수량
    private String sales;       // 판매량 -> bestProducts
    private String explain;     // 설명
    private String signat;      // 특징
    private String contents;    // 상세 설명
    private String uuid;        // 사진 분별
    private String filename;    // 사진 파일 이름
    private String filesize;    // 사진 파일 크기

    public ProductsVO(String pno, String amount) {
        this.pno = pno;
        this.amount = amount;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDisco() {
        return disco;
    }

    public void setDisco(String disco) {
        this.disco = disco;
    }

    public String getTotprice() {
        return totprice;
    }

    public void setTotprice(String totprice) {
        this.totprice = totprice;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getSales() {
        return sales;
    }

    public void setSales(String sales) {
        this.sales = sales;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public String getSignat() {
        return signat;
    }

    public void setSignat(String signat) {
        this.signat = signat;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }
}

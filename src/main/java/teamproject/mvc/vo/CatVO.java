package teamproject.mvc.vo;

public class CatVO {

    private String uno;
    private String catno;
    private String catname;
    private String catkind;
    private String catyear;
    private String catmonth;
    private String catgender;
    private String catweight;
    private String catpic;
    private String prima;

    public CatVO() {
    }

    public CatVO(String uno, String catno, String catname, String catkind,
                 String catyear, String catmonth, String catgender, String catweight,
                 String catpic, String prima) {
        this.uno = uno;
        this.catno = catno;
        this.catname = catname;
        this.catkind = catkind;
        this.catyear = catyear;
        this.catmonth = catmonth;
        this.catgender = catgender;
        this.catweight = catweight;
        this.catpic = catpic;
        this.prima = prima;
    }

    public String getUno() {
        return uno;
    }

    public void setUno(String uno) {
        this.uno = uno;
    }

    public String getCatno() {
        return catno;
    }

    public void setCatno(String catno) {
        this.catno = catno;
    }

    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }

    public String getCatkind() {
        return catkind;
    }

    public void setCatkind(String catkind) {
        this.catkind = catkind;
    }

    public String getCatyear() {
        return catyear;
    }

    public void setCatyear(String catyear) {
        this.catyear = catyear;
    }

    public String getCatmonth() {
        return catmonth;
    }

    public void setCatmonth(String catmonth) {
        this.catmonth = catmonth;
    }

    public String getCatgender() {
        return catgender;
    }

    public void setCatgender(String catgender) {
        this.catgender = catgender;
    }

    public String getCatweight() {
        return catweight;
    }

    public void setCatweight(String catweight) {
        this.catweight = catweight;
    }

    public String getCatpic() {
        return catpic;
    }

    public void setCatpic(String catpic) {
        this.catpic = catpic;
    }

    public String getPrima() {
        return prima;
    }

    public void setPrima(String prima) {
        this.prima = prima;
    }
}

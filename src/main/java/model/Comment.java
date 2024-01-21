package model;

public class Comment {
    private int id;
    private int userId;
    private int productId;
    private String contens;
    private String star;
    private int display;
    private String create_date;

    public Comment(int id, int userId, int productId, String contens, String star, int display, String create_date) {
        this.id = id;
        this.userId = userId;
        this.productId = productId;
        this.contens = contens;
        this.star = star;
        this.display = display;
        this.create_date = create_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getContens() {
        return contens;
    }

    public void setContens(String contens) {
        this.contens = contens;
    }

    public String getStar() {
        return star;
    }

    public void setStar(String star) {
        this.star = star;
    }

    public int getDisplay() {
        return display;
    }

    public void setDisplay(int display) {
        this.display = display;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", userId=" + userId +
                ", productId=" + productId +
                ", contens='" + contens + '\'' +
                ", star=" + star +
                ", display=" + display +
                ", create_date='" + create_date + '\'' +
                '}';
    }
}

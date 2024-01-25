package model;

public class Post {
  private int id;
  private String title;
  private String content;
  private String author;

  public Post( int id, String title, String content, String author) {
    this.id = id;
    this.title = title;
    this.content = content;
    this.author = author;
  }

  public int getId() {
    return id;
  }

  public String getTitle() {
    return title;
  }

  public String getContent() {
    return content;
  }

  public String getAuthor() {
    return author;
  }

  public void setId(int id) {
    this.id = id;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  @Override
  public String toString() {
    return "Post{" +
      "id=" + id +
      ", title='" + title + '\'' +
      ", content='" + content + '\'' +
      ", author='" + author + '\'' +
      '}';
  }
}


package service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class EmailNotification {
  public static void sendNotification(String recipientEmail) {
    String senderEmail = "21130290@st.hcmuaf.edu.vn";
    String senderPassword = "Binh2311";

    Properties properties = new Properties();
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
    properties.put("mail.smtp.host", "smtp.gmail.com");
    properties.put("mail.smtp.port", "587");

    Session session = Session.getInstance(properties, new Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(senderEmail, senderPassword);
      }
    });

    try {
      Message message = new MimeMessage(session);

      message.setFrom(new InternetAddress(senderEmail));
      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));

      message.setSubject("THU XAC NHAN KICH HOAT THANH CONG");
      message.setText("Xin chuc mung, ban da kich hoat tai khoan cua minh thanh cong!");

      Transport.send(message);

      System.out.println("Da gui thanh cong!");

    } catch (MessagingException e) {
      e.printStackTrace();
    }
  }

  public static void main(String[] args) {
    sendNotification("binhquoc23@gmail.com");

  }
}

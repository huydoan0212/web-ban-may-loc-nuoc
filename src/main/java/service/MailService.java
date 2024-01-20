package service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MailService {
  static Properties props = new Properties();

  static {
    props.put("mail.smtp.auth", MailProperties.auth);
    props.put("mail.smtp.starttls.enable", MailProperties.ss1);
    props.put("mail.smtp.host", MailProperties.host);
    props.put("mail.smtp.port", MailProperties.port);
  }

  public static void send(String to, String subject, String mes) throws UnsupportedEncodingException, MessagingException {
    try {
      Session session = Session.getInstance(props, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
          return new PasswordAuthentication(MailProperties.username, MailProperties.password);
        }
      });

      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(MailProperties.username, "Web ban hang"));

      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
      message.setSubject(subject);
      message.setText(mes);
      Transport.send(message);
    } catch (MessagingException | UnsupportedEncodingException e) {

    }

  }
  public static void main(String[] args) throws MessagingException, UnsupportedEncodingException {
    String to = "";
    String subject = "";
    String mes = "";

    MailService.send(to, subject, mes);

  }
}

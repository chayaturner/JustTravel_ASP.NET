﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;      // Provides access to the File class for reading the file 
using System.Net.Mail;   // Provides access to the various mail related classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);
            mailBody = mailBody.Replace("##Name##", Name.Text);
            mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
            mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
            mailBody = mailBody.Replace("##Comments##", Comments.Text);
            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response from web site";
            myMessage.Body = mailBody;
            myMessage.From = new MailAddress(EmailAddress.Text, Name.Text);
            myMessage.To.Add(new MailAddress("help.justtravel@gmail.com", "JustTravel"));
            myMessage.ReplyToList.Add(new MailAddress(EmailAddress.Text));
            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);
            Message.Visible = true;
            FormTable.Visible = false;
        }
    }
}
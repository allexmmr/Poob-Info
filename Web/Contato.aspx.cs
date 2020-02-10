using Library.Common;
using System;

namespace Web
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                #region Banner #1

                if (Request.QueryString["Assunto"] == "Otimizacao-de-Sites-SEO")
                {
                    ddlAssunto.SelectedIndex = 5;
                    ddlAssunto.Items[5].Text = "Otimização de Sites / SEO";
                }

                #endregion
            }
        }

        #region Botão Enviar

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool isGoogleCaptchaValid = GoogleReCaptcha.Validate("6LdRWdcUAAAAALneB0JUblBTzT_tlKMXCgqWWhoP", Request.Form["g-Recaptcha-Response"]);

                if (!isGoogleCaptchaValid)
                    return;

                #region Envia e-mail ao usuário

                Mail mail = new Mail();

                // Criando o corpo do e-mail
                string mensagem;

                mensagem = "<html>";
                mensagem += "<head>";
                mensagem += "<title>Poob Info – Contato</title>";
                mensagem += "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";
                mensagem += "</head>";
                mensagem += "<body bgcolor='#FFFFFF' leftmargin='0' topmargin='0' marginwidth='0' marginheight='0'>";
                mensagem += "<table width='600' border='0' cellpadding='0' cellspacing='0' align='center'>";
                mensagem += "<tr>";
                mensagem += "<td style='background-color: #eeeeee;'>";
                mensagem += "<p style='text-align: center;'><a href='http://www.poob.com.br' target='_blank' title='Poob Info'><img src='http://www.poob.com.br/Images/logo-poob-info.png' width='145' height='67' border='0' alt='Poob Info'></a></p>";
                mensagem += "</td>";
                mensagem += "</tr>";
                mensagem += "<tr>";
                mensagem += "<td style='padding: 20px 30px 20px 30px; background: #ffffff url(http://www.poob.com.br/Images/fnd.png) repeat; font-family: Arial, sans-serif; font-size: 13px; color: #434244; text-align: left;'>";
                mensagem += "<p>Prezado(a) <b>" + txtNomeCompleto.Text + "</b>,</p>";
                mensagem += "<p>Obrigado por entrar em contato conosco.</p>";
                mensagem += "<p>";
                mensagem += "<b>Nome completo:</b> " + txtNomeCompleto.Text + "<br />";
                mensagem += "<b>E-mail:</b> <a href='mailto:" + txtEmail.Text + "' style='color: #434244; text-decoration: none;'>" + txtEmail.Text + "</a><br />";
                mensagem += "<b>Assunto:</b> " + ddlAssunto.SelectedValue + "<br />";
                mensagem += "<b>Mensagem:</b><br />";
                mensagem += txtMensagem.Text;
                mensagem += "</p>";
                mensagem += "</td>";
                mensagem += "</tr>";
                mensagem += "<tr>";
                mensagem += "<td style='padding: 10px; background-color: #434244; font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; color: #ffffff; text-align: center;'>";
                mensagem += "© Copyright 2008-" + DateTime.Now.Year + " – <a href='http://www.poob.com.br' target='_blank' title='Poob Info' style='color: #e59023; text-decoration: none;'>Poob Info</a> – Todos os direitos reservados.";
                mensagem += "</td>"; ;
                mensagem += "</tr>";
                mensagem += "</table>";
                mensagem += "</body>";
                mensagem += "</html>";

                mail.SenderName = "Poob Info";
                mail.SenderMail = "contato@poob.com.br";
                mail.Recipient = txtEmail.Text;
                mail.Subject = "Contato";
                mail.Message = mensagem;

                try
                {
                    mail.SendMail();
                    panelFormulario.Visible = false;
                    panelMensagem.Visible = true;
                    lblMensagem.Text = txtNomeCompleto.Text + ", obrigado por entrar em contato conosco.";
                }
                catch (Exception)
                {
                    panelFormulario.Visible = false;
                    panelMensagem.Visible = true;
                    lblMensagem.Text = txtNomeCompleto.Text + ", ocorreu um erro ao enviar sua mensagem.<br />" +
                        "Por favor, tente novamente mais tarde.";
                }

                #endregion
            }
        }

        #endregion
        
        #region Botão Limpar

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNomeCompleto.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlAssunto.SelectedIndex = 0;
            txtMensagem.Text = string.Empty;
        }

        #endregion
    }
}
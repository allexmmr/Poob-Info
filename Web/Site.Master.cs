using Library.Common;
using System;

namespace PoobInfo
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        #region Botão Cadastrar

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            #region Envia e-mail ao usuário

            Mail mail = new Mail();

            // Criando o corpo do e-mail
            string mensagem;
            mensagem = "<html>";
            mensagem += "<head>";
            mensagem += "<title>Poob Info - Newsletter</title>";
            mensagem += "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";
            mensagem += "</head>";
            mensagem += "<body bgcolor='#FFFFFF' leftmargin='0' topmargin='0' marginwidth='0' marginheight='0'>";
            mensagem += "<table width='600' border='0' cellpadding='0' cellspacing='0' align='center'>";
            mensagem += "<tr>";
            mensagem += "<td style='background-color: #eeeeee;'>";
            mensagem += "<p style='text-align: center;'><img src='http://www.poob.com.br/Images/logo-poob-info.png' width='145' height='67' alt='Poob Info'></p>";
            mensagem += "</td>";
            mensagem += "</tr>";
            mensagem += "<tr>";
            mensagem += "<td style='background: #ffffff url(http://www.poob.com.br/Images/fnd.png) repeat; padding: 20px 30px 20px 30px; font-family: Arial, sans-serif; font-size: 13px; color: #434244; text-align: left;'>";
            mensagem += "<p>Prezado(a) <b>" + txtNome.Text + "</b>,</p>";
            mensagem += "<p style='text-align: center;'>Obrigado por se cadastrar para receber nossas newsletters.</p>";
            mensagem += "</td>";
            mensagem += "</tr>";
            mensagem += "<tr>";
            mensagem += "<td style='background-color: #434244; padding: 10px; font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; color: #ffffff; text-align: center;'>";
            mensagem += "© Copyright 2008-" + DateTime.Now.Year + " <a href='http://www.poob.com.br/' target='_blank' style='color: #e59023; text-decoration: none;'>Poob Info</a> – Todos os direitos reservados.";
            mensagem += "</td>"; ;
            mensagem += "</tr>";
            mensagem += "</table>";
            mensagem += "</body>";
            mensagem += "</html>";
            
            mail.SenderName = "Poob Info";
            mail.SenderMail = "contato@poob.com.br";
            mail.Recipient = txtEmail.Text;
            mail.Subject = "Newsletter";
            mail.Message = mensagem;

            try
            {
                mail.SendMail();
                txtNome.Visible = false;
                txtEmail.Visible = false;
                btnCadastrar.Visible = false;
                lblMensagem.Visible = true;
                lblMensagem.Text = txtNome.Text + ", o seu e-mail foi cadastrado com sucesso para receber nossas newsletters.";
            }
            catch (Exception)
            {
                txtNome.Visible = false;
                txtEmail.Visible = false;
                btnCadastrar.Visible = false;
                lblMensagem.Visible = true;
                lblMensagem.Text = txtNome.Text + ", ocorreu um erro ao cadastrar o seu e-mail para receber nossas newsletters.<br />" +
                    "Por favor, tente novamente mais tarde.";
            }

            #endregion
        }

        #endregion
    }
}
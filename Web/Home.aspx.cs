using System;
using System.Linq;

namespace Web
{
    public partial class Home : System.Web.UI.Page
    {
        Library.Common.Portfolio portfolio = new Library.Common.Portfolio();
        int rndPortfolio, totalPortfolio;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Portfolio();
            }
        }

        #region Portfólio

        void Portfolio()
        {
            var li = portfolio.ListAll();
            totalPortfolio = li.Count();

            Random rnd = new Random();
            rndPortfolio = rnd.Next(0, totalPortfolio);

            // Preenche um portfólio aleatoriamente
            lnkSite.ImageUrl = li[rndPortfolio].Image;
            lnkSite.NavigateUrl = li[rndPortfolio].UrlNavigation;
            lnkSite.ToolTip = "Visite o site " + li[rndPortfolio].Title;
            lblSite.Text = li[rndPortfolio].Title;
            lblJob.Text = li[rndPortfolio].Description;
            lblTecnologias.Text = li[rndPortfolio].Technologies;
            lnkVisite.NavigateUrl = li[rndPortfolio].UrlNavigation;
            lnkVisite.ToolTip = "Visite o site " + li[rndPortfolio].Title;

            // Guarda os valores originais em sessão
            Session["rndPortfolio"] = rndPortfolio;
            Session["totalPortfolio"] = totalPortfolio;

            // Oculta o botão anterior, caso seja o primeiro JOB
            if (rndPortfolio == 0)
                btnAnterior.Visible = false;

            // Oculta o botão próximo, caso seja o último JOB
            if (rndPortfolio == (totalPortfolio - 1))
                btnProximo.Visible = false;
        }

        void PortfolioNav()
        {
            rndPortfolio = int.Parse(Session["rndPortfolio"].ToString());
            totalPortfolio = int.Parse(Session["totalPortfolio"].ToString());

            var li = portfolio.ListAll();
            totalPortfolio = li.Count();

            // Preenche um portfólio aleatoriamente
            lnkSite.ImageUrl = li[rndPortfolio].Image;
            lnkSite.NavigateUrl = li[rndPortfolio].UrlNavigation;
            lnkSite.ToolTip = "Visite o site " + li[rndPortfolio].Title;
            lblSite.Text = li[rndPortfolio].Title;
            lblJob.Text = li[rndPortfolio].Description;
            lblTecnologias.Text = li[rndPortfolio].Technologies;
            lnkVisite.NavigateUrl = li[rndPortfolio].UrlNavigation;
            lnkVisite.ToolTip = "Visite o site " + li[rndPortfolio].Title;
        }

        // Navegação - Anterior
        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            totalPortfolio = int.Parse(Session["totalPortfolio"].ToString());
            rndPortfolio = int.Parse(Session["rndPortfolio"].ToString());

            if (rndPortfolio >= 0)
            {
                if (rndPortfolio != 0)
                {
                    rndPortfolio--;
                    Session["rndPortfolio"] = rndPortfolio;
                }
                PortfolioNav();
            }

            if (rndPortfolio == 0)
                btnAnterior.Visible = false;

            if ((rndPortfolio + 1) == (totalPortfolio - 1))
                btnProximo.Visible = true;
        }

        // Navegação - Próximo
        protected void btnProximo_Click(object sender, EventArgs e)
        {
            totalPortfolio = int.Parse(Session["totalPortfolio"].ToString());
            rndPortfolio = int.Parse(Session["rndPortfolio"].ToString());

            if (rndPortfolio < totalPortfolio)
            {
                if (rndPortfolio != (totalPortfolio - 1))
                {
                    rndPortfolio++;
                    Session["rndPortfolio"] = rndPortfolio;
                }
                PortfolioNav();
            }

            if (rndPortfolio == 1)
                btnAnterior.Visible = true;

            if (rndPortfolio == (totalPortfolio - 1))
                btnProximo.Visible = false;
        }

        #endregion
    }
}
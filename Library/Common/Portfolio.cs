using System.Collections.Generic;
using System.Linq;

namespace Library.Common
{
    public class Portfolio
    {
        #region Properties

        public int Id { get; set; }
        public string Title { get; set; }
        public string Image { get; set; }
        public string UrlDisplay { get; set; }
        public string UrlNavigation { get; set; }
        public string Description { get; set; }
        public string Technologies { get; set; }

        #endregion

        #region ListAll

        /// <summary>
        /// Lista de Portfólio
        /// </summary>
        /// <returns>Lista</returns>
        public List<Portfolio> ListAll()
        {
            List<Portfolio> portfolio = new List<Portfolio>
                                            {
                                                new Portfolio { Id = 1, Title = "Fazendas Paraíso - Joomla 1.5", Image = "~/Images/Portfolio/fazendas-paraiso-j15.jpg", UrlDisplay = "http://j15.fazparaiso.com.br/", UrlNavigation = "http://j15.fazparaiso.com.br/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "PHP (com Joomla 1.5), CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 2, Title = "Patrícia Bahia Eventos", Image = "~/Images/Portfolio/patricia-bahia-eventos.jpg", UrlDisplay = "http://www.patriciabahiaeventos.com.br/", UrlNavigation = "http://patriciabahiaeventos.poob.com.br/", Description = "Criação de site.", Technologies = "PHP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 3, Title = "Fazendas Paraíso - Joomla 2.5", Image = "~/Images/Portfolio/fazendas-paraiso-j25.jpg", UrlDisplay = "http://www.fazparaiso.com.br/", UrlNavigation = "http://www.fazparaiso.com.br/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "PHP (com Joomla 2.5), AJAX, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 4, Title = "INPN", Image = "~/Images/Portfolio/inpn.jpg", UrlDisplay = "http://www.inpn.com.br/", UrlNavigation = "http://www.inpn.com.br/", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 5, Title = "Abross", Image = "~/Images/Portfolio/abross.jpg", UrlDisplay = "http://www.abross.org.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 6, Title = "Osteology", Image = "~/Images/Portfolio/osteology.jpg", UrlDisplay = "http://www.osteology.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 7, Title = "Gesmark", Image = "~/Images/Portfolio/gesmark.jpg", UrlDisplay = "http://www.inpn.com.br/Gesmark/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 8, Title = "Brånemark", Image = "~/Images/Portfolio/branemark.jpg", UrlDisplay = "http://www.cursosbranemark.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP, CSS, JavaScript e validação W3C." },
                                                new Portfolio { Id = 9, Title = "VM Comunicação", Image = "~/Images/Portfolio/vm-com.jpg", UrlDisplay = "http://www.vmcom.com.br/", UrlNavigation = "http://www.vmcom.com.br/", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 10, Title = "SBRO", Image = "~/Images/Portfolio/sbro.jpg", UrlDisplay = "http://www.encontrosbro.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 11, Title = "INVOX", Image = "~/Images/Portfolio/invox.jpg", UrlDisplay = "http://www.vmcom.com.br/Invox/", UrlNavigation = "http://www.vmcom.com.br/Invox/", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 12, Title = "OrtodontiaSPO", Image = "~/Images/Portfolio/spo.jpg", UrlDisplay = "http://www.ortodontiaspo.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 13, Title = "ImplantNews", Image = "~/Images/Portfolio/implantnews.jpg", UrlDisplay = "http://www.implantnews.com.br/", UrlNavigation = "http://www.implantnews.com.br/", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 14, Title = "PerioNews", Image = "~/Images/Portfolio/perionews.jpg", UrlDisplay = "http://www.perionews.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 15, Title = "IN 2013", Image = "~/Images/Portfolio/in-2013.jpg", UrlDisplay = "http://www.in2013.com.br/", UrlNavigation = "#", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 16, Title = "BOC | SÃO PAULO - Excelência em cursos odontológicos", Image = "~/Images/Portfolio/boc-sao-paulo.jpg", UrlDisplay = "http://www.bocsaopaulo.com.br/", UrlNavigation = "http://www.bocsaopaulo.com.br/", Description = "Criação de site e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 17, Title = "Pistache Futsal", Image = "~/Images/Portfolio/pistache-futsal.jpg", UrlDisplay = "http://www.pistachefutsal.com.br/", UrlNavigation = "http://www.pistachefutsal.com.br/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 18, Title = "Adriana & Allex", Image = "~/Images/Portfolio/adriana-e-allex.jpg", UrlDisplay = "http://www.adrianaeallex.com.br/", UrlNavigation = "http://adrianaeallex.poob.com.br/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 19, Title = "Beth Teani", Image = "~/Images/Portfolio/beth-teani.jpg", UrlDisplay = "http://www.bethteani.com.br/", UrlNavigation = "http://www.bethteani.com.br/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "PHP (com Joomla 3.0), AJAX, CSS, jQuery e validação W3C." },
                                                new Portfolio { Id = 20, Title = "TR3ARQ – Arquitetura e Interiores", Image = "~/Images/Portfolio/tr3arq.jpg", UrlDisplay = "http://www.tr3arq.com/", UrlNavigation = "http://www.tr3arq.com/", Description = "Criação de site, criação de logo e SEO (otimização de site para mecanismo de busca).", Technologies = "ASP.NET C#, AJAX, CSS, jQuery e validação W3C." }
                                            };

            return portfolio.OrderByDescending(o => o.Id).ToList(); ;
        }

        #endregion
    }
}
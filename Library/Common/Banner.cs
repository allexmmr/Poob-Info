using System.Collections.Generic;
using System.Linq;

namespace Library.Common
{
    public class Banner
    {
        #region Properties

        public int Id { get; set; }
        public string Image { get; set; }
        public string Url { get; set; }

        #endregion

        #region ListAll

        /// <summary>
        /// Lista de Banners
        /// </summary>
        /// <returns>Lista</returns>
        public List<Banner> ListAll()
        {
            List<Banner> banner = new List<Banner>
                                      {
                                          new Banner{Id = 1, Image = "~/Images/Banners/001.jpg", Url = "~/Contato?Assunto=Otimizacao-de-Sites-SEO"},
                                          new Banner{Id = 2, Image = "~/Images/Banners/002.jpg", Url = "~/Contato"}
                                      };

            return banner.ToList();
        }

        #endregion
    }
}
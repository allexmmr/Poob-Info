using System.Collections.Generic;
using System.Linq;

namespace Library.Common
{
    public class Customer
    {
        #region Properties

        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Url { get; set; }

        #endregion

        #region ListAll

        /// <summary>
        /// Lista de Cliente
        /// </summary>
        /// <returns>Lista</returns>
        public List<Customer> ListAll()
        {
            List<Customer> customer = new List<Customer>
                                          {
                                              new Customer { Id = 1, Name = "Fazendas Paraíso", Image = "~/Images/Clientes/fazendas-paraiso.jpg", Url = "http://www.fazparaiso.com.br/" },
                                              new Customer { Id = 2, Name = "Patrícia Bahia Eventos", Image = "~/Images/Clientes/patricia-bahia-eventos.jpg", Url = "http://patriciabahiaeventos.poob.com.br/" },
                                              new Customer { Id = 3, Name = "VM Comunicação", Image = "~/Images/Clientes/vm-com.jpg", Url = "http://www.vmcom.com.br/" },
                                              new Customer { Id = 4, Name = "Beth Teani", Image = "~/Images/Clientes/beth-teani.jpg", Url = "http://www.bethteani.com.br/" },
                                              new Customer { Id = 5, Name = "TR3ARQ – Arquitetura e Interiores", Image = "~/Images/Clientes/tr3arq.jpg", Url = "http://www.tr3arq.com/" }
                                          };

            return customer.OrderBy(o => o.Name).ToList(); ;
        }

        #endregion
    }
}
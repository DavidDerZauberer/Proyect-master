using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace SGPI
{
    public class Criptografia
    {
        /// <summary>
        /// Metodo para retornas el hash de un texto claro ingresado como parametro
        /// </summary>
        /// <param name="TextoClaro a convertir"></param>
        /// <returns>hash del texto ingresado como parametro</returns>
        public String CodigoHash(string TextoClaro)
        {
            StringBuilder stringBuilder = new StringBuilder();
            using (SHA256 sha256 = new SHA256Managed())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.ASCII.GetBytes(TextoClaro));
                
                for (int i=0; i<bytes.Length; i++)
                {
                    stringBuilder.Append(bytes[i].ToString("x2"));
                }
            }
            return stringBuilder.ToString();
        } 
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Utilidades
{
    public class Matrices
    {
        public static string getTextMatriz(int[,] m)
        {
            string resultado = "";

            for (int f = 0; f < 5; f++)
            {
                for (int c = 0; c < 5; c++)
                {
                    resultado += m[f, c].ToString() + "\t";
                }
                resultado += "\n";
            }

            return resultado;
        }

        public static int[,] matriz1()
        {
            int n = 0;
            int[,] m = new int[5, 5];

            for (int f = 0; f < 5; f++)
            {
                for (int c = 0; c < 5; c++)
                {
                    m[f, c] = ++n;
                }
            }

            return m;

        }

        public static int[,] matriz2()
        {
            int[,] m = new int[5, 5];

            for (int f = 0; f < 5; f++)
            {
                for (int c = 0; c < 5; c++)
                {
                    if (f == c) m[f, c] = 1;
                    else if (f + c == 4) m[f, c] = 2;
                    else
                    {
                        if (f < c)
                        {
                            if (f + c < 4) m[f, c] = 3;
                            else m[f, c] = 4;
                        }
                        else
                        {
                            if (f + c < 4) m[f, c] = 6;
                            else m[f, c] = 5;
                        }
                    }
                }
            }

            return m;

        }

        public static int[,] matriz3()
        {
            int[,] m = new int[5, 5];

            for (int f = 0; f < 5; f++)
            {
                for (int c = 0; c < 5; c++)
                {
                    if (f % 2 == 0) m[f, c] = f * c + c;
                    else m[f, c] = f - c;
                }
            }

            return m;

        }

    }
}

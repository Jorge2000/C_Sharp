using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Inventario
{
    public partial class FormBase : Form
    {
        public bool puedeSalvar { set; get; }
        public bool puedeEliminar { set; get; }
        public bool puedeConsultar { set; get; }
        public bool puedeImprimir { set; get; }

        public FormBase()
        {
            InitializeComponent();
        }

        public virtual void Salvar() { }
        public virtual void Eliminar() { }
        public virtual void Consultar() { }
        public virtual void Limpiar() { }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {

        }
    }
}

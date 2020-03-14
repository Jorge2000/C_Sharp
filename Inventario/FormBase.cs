using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace Inventario {
    public partial class FormBase : Form {
        public bool puedeSalvar { set; get; }
        public bool puedeEliminar { set; get; }
        public bool puedeConsultar { set; get; }
        public bool puedeImprimir { set; get; }
        public DataSet DS = new DataSet ();
        public ErrorProvider ep = new ErrorProvider ();

        public FormBase () {
            InitializeComponent ();
            buttonCerrar.FlatStyle = FlatStyle.Flat;
        }

        public virtual void Limpiar () {
            MessageBox.Show ("Limpiando");
        }

        public virtual void Salvar () {
            MessageBox.Show ("Salvando...");
        }

        public virtual void Eliminar () {
            MessageBox.Show ("Eliminando...");
        }

        public virtual void Consultar () {
            MessageBox.Show ("Consultando...");
        }

        public virtual void Imprimir () {
            MessageBox.Show ("Imprimiendo...");
        }

        public virtual bool IsValidEmail (string email) {
            try {
                var addr = new System.Net.Mail.MailAddress (email);
                return addr.Address == email;
            } catch {
                return false;
            }
        }

        public virtual void validatingField (string campo, string value, TextBox txtBox) {
            if (string.IsNullOrEmpty (value)) {
                errorProvider.SetError (txtBox, "El campo " + campo + " no puede estar vacios");
            } else {
                errorProvider.SetError (txtBox, "");
            }

        }

        public virtual string clearString (TextBox str) {
            if (string.IsNullOrEmpty (str.Text)) return "";
            return str.Text.Trim ();
        }

        public virtual void onlyInteger (object sender, KeyPressEventArgs e) {
            if (!char.IsControl (e.KeyChar) && !char.IsDigit (e.KeyChar)) {
                e.Handled = true;
            }

            if (((sender as TextBox).Text.IndexOf ('.') > -1)) {
                e.Handled = true;
            }

        }

        public virtual void onlyString (object sender, KeyPressEventArgs e) {
            e.Handled = !(char.IsLetter (e.KeyChar) || e.KeyChar == (char) Keys.Back);
        }

        public virtual void onlyFloat (object sender, KeyPressEventArgs e) {
            if (!char.IsControl (e.KeyChar) && !char.IsDigit (e.KeyChar) &&
                (e.KeyChar != '.')) {
                e.Handled = true;
            }

            // only allow one decimal point
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf ('.') > -1)) {
                e.Handled = true;
            }

        }

        private void buttonCerrar_Click (object sender, EventArgs e) {

        }

        private void FormBase_Load (object sender, EventArgs e) {

        }

        private void panel2_Paint (object sender, PaintEventArgs e) {

        }

        private void buttonCerrar_Click_1 (object sender, EventArgs e) {
            Dispose ();
        }

    }
}
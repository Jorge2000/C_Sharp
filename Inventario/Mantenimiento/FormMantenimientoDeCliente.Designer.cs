namespace Inventario {
    partial class FormMantenimientoDeCliente {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose (bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose ();
            }
            base.Dispose (disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent () {
            this.txtNombre = new System.Windows.Forms.TextBox ();
            this.txtCodigo = new System.Windows.Forms.TextBox ();
            this.checkBoxEstado = new System.Windows.Forms.CheckBox ();
            this.label2 = new System.Windows.Forms.Label ();
            this.txtEmail = new System.Windows.Forms.TextBox ();
            this.label = new System.Windows.Forms.Label ();
            this.label4 = new System.Windows.Forms.Label ();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel ();
            this.comboBoxGenero = new System.Windows.Forms.ComboBox ();
            this.txtTelefono = new System.Windows.Forms.MaskedTextBox ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).BeginInit ();
            this.SuspendLayout ();
            // 
            // btnSalvar
            // 
            this.btnSalvar.FlatAppearance.BorderSize = 0;
            this.btnSalvar.Location = new System.Drawing.Point (11, 209);
            this.btnSalvar.TabIndex = 6;
            this.btnSalvar.Click += new System.EventHandler (this.btnSalvar_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.FlatAppearance.BorderSize = 0;
            this.btnBuscar.Location = new System.Drawing.Point (11, 270);
            this.btnBuscar.Click += new System.EventHandler (this.btnBuscar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.FlatAppearance.BorderSize = 0;
            this.btnEliminar.Location = new System.Drawing.Point (11, 332);
            this.btnEliminar.TabIndex = 8;
            this.btnEliminar.Click += new System.EventHandler (this.btnEliminar_Click);
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point (644, 0);
            this.panel1.Size = new System.Drawing.Size (141, 442);
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            this.buttonCerrar.Location = new System.Drawing.Point (11, 391);
            this.buttonCerrar.TabIndex = 9;
            this.buttonCerrar.Click += new System.EventHandler (this.buttonCerrar_Click);
            // 
            // label1
            // 
            this.label1.Size = new System.Drawing.Size (353, 31);
            this.label1.Text = "      Mantenimiento de clientes";
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtNombre.Location = new System.Drawing.Point (125, 154);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size (252, 29);
            this.txtNombre.TabIndex = 2;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCodigo.Location = new System.Drawing.Point (125, 93);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size (126, 29);
            this.txtCodigo.TabIndex = 1;
            this.txtCodigo.TextChanged += new System.EventHandler (this.txtCodigo_TextChanged);
            this.txtCodigo.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtCodigo_KeyPress);
            this.txtCodigo.Validating += new System.ComponentModel.CancelEventHandler (this.txtCodigo_Validating);
            // 
            // checkBoxEstado
            // 
            this.checkBoxEstado.AutoSize = true;
            this.checkBoxEstado.BackColor = System.Drawing.Color.Transparent;
            this.checkBoxEstado.Font = new System.Drawing.Font ("Arial", 14F);
            this.checkBoxEstado.Location = new System.Drawing.Point (26, 332);
            this.checkBoxEstado.Name = "checkBoxEstado";
            this.checkBoxEstado.Size = new System.Drawing.Size (89, 26);
            this.checkBoxEstado.TabIndex = 5;
            this.checkBoxEstado.Text = "Estado";
            this.checkBoxEstado.UseVisualStyleBackColor = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label2.Location = new System.Drawing.Point (22, 161);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size (78, 22);
            this.label2.TabIndex = 7;
            this.label2.Text = "Nombre";
            // 
            // txtEmail
            // 
            this.txtEmail.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtEmail.Location = new System.Drawing.Point (125, 212);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size (252, 29);
            this.txtEmail.TabIndex = 3;
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.BackColor = System.Drawing.Color.Transparent;
            this.label.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label.Location = new System.Drawing.Point (22, 219);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size (57, 22);
            this.label.TabIndex = 12;
            this.label.Text = "Email";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label4.Location = new System.Drawing.Point (22, 277);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size (84, 22);
            this.label4.TabIndex = 14;
            this.label4.Text = "Teléfono";
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.BackColor = System.Drawing.Color.Transparent;
            this.linkLabel1.Font = new System.Drawing.Font ("Arial", 14.25F);
            this.linkLabel1.Location = new System.Drawing.Point (23, 96);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size (72, 22);
            this.linkLabel1.TabIndex = 16;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Código";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler (this.linkLabel1_LinkClicked);
            // 
            // comboBoxGenero
            // 
            this.comboBoxGenero.Font = new System.Drawing.Font ("Arial", 14.25F);
            this.comboBoxGenero.FormattingEnabled = true;
            this.comboBoxGenero.Items.AddRange (new object[] {
                "Selecciona un género",
                "Femenino",
                "Masculino"
            });
            this.comboBoxGenero.Location = new System.Drawing.Point (28, 374);
            this.comboBoxGenero.Name = "comboBoxGenero";
            this.comboBoxGenero.Size = new System.Drawing.Size (351, 30);
            this.comboBoxGenero.TabIndex = 25;
            this.comboBoxGenero.Text = "Selecciona un género";
            this.comboBoxGenero.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.comboBoxGenero_KeyPress);
            // 
            // txtTelefono
            // 
            this.txtTelefono.Font = new System.Drawing.Font ("Arial", 14.25F);
            this.txtTelefono.Location = new System.Drawing.Point (125, 277);
            this.txtTelefono.Mask = "(999)-000-0000";
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size (252, 29);
            this.txtTelefono.TabIndex = 4;
            // 
            // FormMantenimientoDeCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (785, 442);
            this.Controls.Add (this.txtTelefono);
            this.Controls.Add (this.comboBoxGenero);
            this.Controls.Add (this.linkLabel1);
            this.Controls.Add (this.label4);
            this.Controls.Add (this.txtEmail);
            this.Controls.Add (this.label);
            this.Controls.Add (this.txtNombre);
            this.Controls.Add (this.txtCodigo);
            this.Controls.Add (this.checkBoxEstado);
            this.Controls.Add (this.label2);
            this.Name = "FormMantenimientoDeCliente";
            this.Text = "Mantenimiento de clientes";
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.label2, 0);
            this.Controls.SetChildIndex (this.checkBoxEstado, 0);
            this.Controls.SetChildIndex (this.txtCodigo, 0);
            this.Controls.SetChildIndex (this.txtNombre, 0);
            this.Controls.SetChildIndex (this.label, 0);
            this.Controls.SetChildIndex (this.txtEmail, 0);
            this.Controls.SetChildIndex (this.label4, 0);
            this.Controls.SetChildIndex (this.linkLabel1, 0);
            this.Controls.SetChildIndex (this.comboBoxGenero, 0);
            this.Controls.SetChildIndex (this.txtTelefono, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).EndInit ();
            this.ResumeLayout (false);
            this.PerformLayout ();

        }

        #endregion

        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.CheckBox checkBoxEstado;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.ComboBox comboBoxGenero;
        private System.Windows.Forms.MaskedTextBox txtTelefono;
    }
}
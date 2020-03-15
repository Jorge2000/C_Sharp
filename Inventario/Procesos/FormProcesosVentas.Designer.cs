namespace Inventario.Procesos {
    partial class FormProcesosVentas {
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
            this.linkLabel1 = new System.Windows.Forms.LinkLabel ();
            this.txtNombre = new System.Windows.Forms.TextBox ();
            this.txtCodigo = new System.Windows.Forms.TextBox ();
            this.dataGridView1 = new System.Windows.Forms.DataGridView ();
            this.ColumnCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn ();
            this.ColumnNombre = new System.Windows.Forms.DataGridViewTextBoxColumn ();
            this.ColumnCantidad = new System.Windows.Forms.DataGridViewTextBoxColumn ();
            this.ColumnPrecio = new System.Windows.Forms.DataGridViewTextBoxColumn ();
            this.ColumnImporte = new System.Windows.Forms.DataGridViewTextBoxColumn ();
            this.txtCodigoProducto = new System.Windows.Forms.TextBox ();
            this.txtNombreProducto = new System.Windows.Forms.TextBox ();
            this.txtCantidadExistente = new System.Windows.Forms.TextBox ();
            this.txtPrecioProducto = new System.Windows.Forms.TextBox ();
            this.btnAgregar = new System.Windows.Forms.Button ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.dataGridView1)).BeginInit ();
            this.SuspendLayout ();
            // 
            // btnConsultar
            // 
            this.btnConsultar.FlatAppearance.BorderSize = 0;
            this.btnConsultar.Click += new System.EventHandler (this.btnConsultar_Click);
            // 
            // btnNuevo
            // 
            this.btnNuevo.FlatAppearance.BorderSize = 0;
            this.btnNuevo.Click += new System.EventHandler (this.btnNuevo_Click);
            // 
            // btnProcesar
            // 
            this.btnProcesar.FlatAppearance.BorderSize = 0;
            // 
            // btnEliminar
            // 
            this.btnEliminar.FlatAppearance.BorderSize = 0;
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.BackColor = System.Drawing.Color.Transparent;
            this.linkLabel1.Font = new System.Drawing.Font ("Arial", 14.25F);
            this.linkLabel1.Location = new System.Drawing.Point (13, 77);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size (72, 22);
            this.linkLabel1.TabIndex = 17;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Código";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler (this.linkLabel1_LinkClicked_1);
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtNombre.Location = new System.Drawing.Point (164, 74);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size (252, 29);
            this.txtNombre.TabIndex = 19;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCodigo.Location = new System.Drawing.Point (103, 74);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size (55, 29);
            this.txtCodigo.TabIndex = 18;
            this.txtCodigo.TextChanged += new System.EventHandler (this.txtCodigo_TextChanged_1);
            this.txtCodigo.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtCodigo_KeyPress);
            this.txtCodigo.Validating += new System.ComponentModel.CancelEventHandler (this.txtCodigo_Validating_1);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ActiveBorder;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange (new System.Windows.Forms.DataGridViewColumn[] {
                this.ColumnCodigo,
                    this.ColumnNombre,
                    this.ColumnCantidad,
                    this.ColumnPrecio,
                    this.ColumnImporte
            });
            this.dataGridView1.Location = new System.Drawing.Point (12, 189);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size (608, 263);
            this.dataGridView1.TabIndex = 20;
            // 
            // ColumnCodigo
            // 
            this.ColumnCodigo.HeaderText = "Código";
            this.ColumnCodigo.Name = "ColumnCodigo";
            // 
            // ColumnNombre
            // 
            this.ColumnNombre.HeaderText = "Nombre";
            this.ColumnNombre.Name = "ColumnNombre";
            // 
            // ColumnCantidad
            // 
            this.ColumnCantidad.HeaderText = "Cantidad";
            this.ColumnCantidad.Name = "ColumnCantidad";
            // 
            // ColumnPrecio
            // 
            this.ColumnPrecio.HeaderText = "Precio";
            this.ColumnPrecio.Name = "ColumnPrecio";
            // 
            // ColumnImporte
            // 
            this.ColumnImporte.HeaderText = "Importe";
            this.ColumnImporte.Name = "ColumnImporte";
            // 
            // txtCodigoProducto
            // 
            this.txtCodigoProducto.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCodigoProducto.Location = new System.Drawing.Point (54, 154);
            this.txtCodigoProducto.Name = "txtCodigoProducto";
            this.txtCodigoProducto.Size = new System.Drawing.Size (111, 29);
            this.txtCodigoProducto.TabIndex = 21;
            this.txtCodigoProducto.TextChanged += new System.EventHandler (this.txtCodigoProducto_TextChanged);
            this.txtCodigoProducto.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtCodigoProducto_KeyPress);
            this.txtCodigoProducto.Validating += new System.ComponentModel.CancelEventHandler (this.txtCodigoProducto_Validating);
            // 
            // txtNombreProducto
            // 
            this.txtNombreProducto.Enabled = false;
            this.txtNombreProducto.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtNombreProducto.Location = new System.Drawing.Point (164, 154);
            this.txtNombreProducto.Name = "txtNombreProducto";
            this.txtNombreProducto.Size = new System.Drawing.Size (114, 29);
            this.txtNombreProducto.TabIndex = 22;
            // 
            // txtCantidadExistente
            // 
            this.txtCantidadExistente.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCantidadExistente.Location = new System.Drawing.Point (275, 154);
            this.txtCantidadExistente.Name = "txtCantidadExistente";
            this.txtCantidadExistente.Size = new System.Drawing.Size (117, 29);
            this.txtCantidadExistente.TabIndex = 23;
            this.txtCantidadExistente.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtCantidadProducto_KeyPress);
            // 
            // txtPrecioProducto
            // 
            this.txtPrecioProducto.Enabled = false;
            this.txtPrecioProducto.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtPrecioProducto.Location = new System.Drawing.Point (389, 154);
            this.txtPrecioProducto.Name = "txtPrecioProducto";
            this.txtPrecioProducto.Size = new System.Drawing.Size (118, 29);
            this.txtPrecioProducto.TabIndex = 24;
            this.txtPrecioProducto.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtPrecioProducto_KeyPress);
            // 
            // btnAgregar
            // 
            this.btnAgregar.BackColor = System.Drawing.Color.FromArgb (((int) (((byte) (86)))), ((int) (((byte) (101)))), ((int) (((byte) (115)))));
            this.btnAgregar.FlatAppearance.BorderSize = 0;
            this.btnAgregar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAgregar.Font = new System.Drawing.Font ("Arial", 14F);
            this.btnAgregar.ForeColor = System.Drawing.Color.White;
            this.btnAgregar.Location = new System.Drawing.Point (520, 154);
            this.btnAgregar.Margin = new System.Windows.Forms.Padding (0);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size (100, 29);
            this.btnAgregar.TabIndex = 25;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = false;
            // 
            // FormProcesosVentas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (784, 461);
            this.Controls.Add (this.btnAgregar);
            this.Controls.Add (this.txtPrecioProducto);
            this.Controls.Add (this.txtCantidadExistente);
            this.Controls.Add (this.txtNombreProducto);
            this.Controls.Add (this.txtCodigoProducto);
            this.Controls.Add (this.dataGridView1);
            this.Controls.Add (this.txtNombre);
            this.Controls.Add (this.txtCodigo);
            this.Controls.Add (this.linkLabel1);
            this.Name = "FormProcesosVentas";
            this.Text = "FormProcesosVentas";
            this.Controls.SetChildIndex (this.linkLabel1, 0);
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.txtCodigo, 0);
            this.Controls.SetChildIndex (this.txtNombre, 0);
            this.Controls.SetChildIndex (this.dataGridView1, 0);
            this.Controls.SetChildIndex (this.txtCodigoProducto, 0);
            this.Controls.SetChildIndex (this.txtNombreProducto, 0);
            this.Controls.SetChildIndex (this.txtCantidadExistente, 0);
            this.Controls.SetChildIndex (this.txtPrecioProducto, 0);
            this.Controls.SetChildIndex (this.btnAgregar, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.dataGridView1)).EndInit ();
            this.ResumeLayout (false);
            this.PerformLayout ();

        }

        #endregion

        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnNombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnCantidad;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnPrecio;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnImporte;
        private System.Windows.Forms.TextBox txtCodigoProducto;
        private System.Windows.Forms.TextBox txtNombreProducto;
        private System.Windows.Forms.TextBox txtCantidadExistente;
        private System.Windows.Forms.TextBox txtPrecioProducto;
        public System.Windows.Forms.Button btnAgregar;

    }
}
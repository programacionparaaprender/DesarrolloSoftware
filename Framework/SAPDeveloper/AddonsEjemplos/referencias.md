


### trabajar listas
https://answers.sap.com/questions/7802653/filter-bp-choose-from-list.html

### otros

private static void crearElementoLabel(string id, string cadena, int Top, int Width, int Height, int Left, int FromPane, int ToPane)
        {
            SAPbouiCOM.Item oItem = mForm.Items.Add(id, SAPbouiCOM.BoFormItemTypes.it_STATIC);
            oItem.Top = Top;
            oItem.Width = Width;
            oItem.Height = Height;
            oItem.Left = Left;
            oItem.FromPane = FromPane;
            oItem.ToPane = ToPane;

            oItem.Visible = true;
            SAPbouiCOM.StaticText oStaticText = oItem.Specific;

            oStaticText.Caption = cadena;
        }
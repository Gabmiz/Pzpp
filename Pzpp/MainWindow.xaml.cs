using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MahApps.Metro.Controls;
using System.Data.Entity.Core.Objects;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;

namespace Pzpp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public class Computers
        {
           
        }

        public bool IsValidateIP(string Address)
        {
            string Pattern = @"^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$";
            Regex check = new Regex(Pattern);
 
            if (string.IsNullOrEmpty(Address))
                  return false;
            else
                 return check.IsMatch(Address, 0);
        }
    
    public MainWindow()
        {
            InitializeComponent();
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
          
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ComputersTable CT = new ComputersTable();
            CT.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            ResponsesTable RT = new ResponsesTable();
            RT.Show();
        }
    }
}

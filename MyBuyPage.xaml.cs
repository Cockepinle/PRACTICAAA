﻿using Salon.BeautySalonDataSetTableAdapters;
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
using Salon.BeautySalonDataSetTableAdapters;
using System.Data;

namespace Salon
{
    /// <summary>
    /// Логика взаимодействия для MyBuyPage.xaml
    /// </summary>
    public partial class MyBuyPage : Page
    {
        ServicessTableAdapter service = new ServicessTableAdapter();
        DataTable checksTable = new DataTable("Checks");
        StudioAddressTableAdapter studioAddress = new StudioAddressTableAdapter();
        EmployeeTableAdapter employee = new EmployeeTableAdapter();
        OrdersTableAdapter orders = new OrdersTableAdapter();
        Certificate_UserTableAdapter certificate = new Certificate_UserTableAdapter();
        public MyBuyPage()
        {
            InitializeComponent();
            SalonGrid.ItemsSource = service.GetData();
            Cer.ItemsSource = certificate.GetData();
            Cer.DisplayMemberPath = "Amount_Certificate";
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (checksTable.Columns["Services_Name"] == null)
            {
                checksTable.Columns.Add("Services_Name", typeof(string));
            }

            if (checksTable.Columns["Price"] == null)
            {
                checksTable.Columns.Add("Price", typeof(int));
            }

            if (checksTable.Columns["Stoks_ID"] == null)
            {
                checksTable.Columns.Add("Stoks_ID", typeof(int));
            }
            if (checksTable.Columns["Surname"] == null)
            {
                checksTable.Columns.Add("Surname", typeof(string));
            }

            if (checksTable.Columns["Address"] == null)
            {
                checksTable.Columns.Add("Address", typeof(string));
            }
            if (SalonGrid.SelectedItem != null)
            {
                DataRowView selectedRow = SalonGrid.SelectedItem as DataRowView;

                DataRow newRow = checksTable.NewRow();
                newRow["Services_Name"] = selectedRow["Services_Name"].ToString();
                newRow["Price"] = Convert.ToInt32(selectedRow["Price"]);
                newRow["Stoks_ID"] = Convert.ToInt32(selectedRow["Stoks_ID"]);
                checksTable.Rows.Add(newRow);
                ChekGrid.ItemsSource = checksTable.DefaultView;
                UpdateTotalPrice();
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {

            if (ChekGrid.SelectedItem != null)
            {
                DataRowView selectedRow = ChekGrid.SelectedItem as DataRowView;
                checksTable.Rows.Remove(selectedRow.Row);
                UpdateTotalPrice();
            }
        }
        private void UpdateTotalPrice()
        {
                decimal totalPrice = 0;

            // Получаем сумму сертификата
            decimal certificateAmount = 0;
            if (!string.IsNullOrEmpty(Cer.Text) && decimal.TryParse(Cer.Text, out certificateAmount))
            {
                foreach (DataRow row in checksTable.Rows)
                {
                    decimal price = Convert.ToDecimal(row["Price"]);

                    // Вычитаем сумму сертификата из цены, если она применима
                    if (certificateAmount > 0)
                    {
                        if (certificateAmount >= 1000 && certificateAmount <= 500000)
                        {
                            decimal remainingAmount = price - certificateAmount;
                            if (remainingAmount < 0)
                            {
                                MessageBox.Show($"Добавьте еще {Math.Abs(remainingAmount)} для покрытия основной цены.");
                                return;
                            }
                            price = remainingAmount;
                            certificateAmount = 0; // Учли сертификат, обнуляем его для следующих позиций
                        }
                    }

                    // Логика скидки
                    if (!string.IsNullOrEmpty(Skid.Text) && int.TryParse(Skid.Text, out int skidAmount) && skidAmount > 5 && skidAmount < 50)
                    {
                        price -= price * skidAmount / 100;
                    }

                    totalPrice += price;
                }
            }

            TotalPriceTextBox.Text = totalPrice.ToString();
        }
        private void SaveDataToFile(int receiptNumber)
        {
            DateTime orderTime = (DateTime)orders.GetData().Rows[0]["DateTime_Orders"];

            string input = Address.Text;
            if (!decimal.TryParse(input, out decimal receivedAmount) || receivedAmount < 0)
            {
                MessageBox.Show("Пожалуйста, введите правильную неотрицательную сумму.");
                return;
            }

            decimal totalAmount = 0;
            foreach (DataRow row in checksTable.Rows)
            {
                if (row["Price"] != DBNull.Value && decimal.TryParse(row["Price"].ToString(), out decimal price))
                {
                    totalAmount += price;
                    TotalPriceTextBox.Text = totalAmount.ToString(); // Assuming totalAmountLabel is the name of the label control
                }
            }

            Random random = new Random();
             int randomIndex = random.Next(employee.GetData().Rows.Count);
            string randomSurname = employee.GetData().Rows[randomIndex]["Surname_Employee"].ToString();
            int randomIndexa = random.Next(studioAddress.GetData().Rows.Count);
            string randomAddress = studioAddress.GetData().Rows[randomIndexa]["StudioAddress"].ToString();


            if (!string.IsNullOrEmpty(Skid.Text) && int.TryParse(Skid.Text, out int skidAmount) && skidAmount > 5 && skidAmount < 50)
            {
                foreach (DataRow row in checksTable.Rows)
                {
                    int price = Convert.ToInt32(row["Price"]);
                    price -= price * skidAmount / 100;
                    row["Price"] = price; // Обновляем цену с учетом скидки
                }
            }

            decimal certificateAmount = 0;
            if (!string.IsNullOrEmpty(Cer.Text) && decimal.TryParse(Cer.Text, out certificateAmount))
            {
                if (certificateAmount >= totalAmount)
                {
                    // Пропустить ввод суммы и применение скидки
                    receivedAmount = totalAmount; // Сумма, полученная сертификатом, равна общей сумме
                }
            }

            totalAmount = receivedAmount;


            if (receivedAmount < totalAmount)
            {
                MessageBox.Show("Недостаточно средств. Пожалуйста, введите сумму, равную или большую общей стоимости.");
                return;
            }

            string desktopPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            string fileName = $"Квитанция_{DateTime.Now.ToString("yyyyMMddHHmmss")}.txt";

            

            decimal change = receivedAmount - totalAmount;

            using (System.IO.StreamWriter file = new System.IO.StreamWriter(System.IO.Path.Combine(desktopPath, fileName)))
            {
                file.WriteLine("");
                file.WriteLine($"Номер квитанции: {receiptNumber}");
                file.WriteLine();

                int receiptItem = 1;
                foreach (DataRow row in checksTable.Rows)
                {
                    file.WriteLine($"Квитанция {receiptItem++}:");
                    file.WriteLine($"{row["Services_Name"]} - {row["Price"]}");
                    file.WriteLine();
                }

                file.WriteLine($"Итого к оплате: {totalAmount}");
                file.WriteLine($"Получено: {receivedAmount}");
                file.WriteLine($"Сдача: {change}");
                file.WriteLine($"Фамилия: {randomSurname}");
                file.WriteLine($"Адрес: {randomAddress}");
                string currentTime = DateTime.Now.ToString("yy.yy.MM.dd.HH.mm.ss");
                file.WriteLine($"Текущее время: {currentTime}");

            }
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Random random = new Random();
            int receiptNumber = random.Next(1000, 9999);
            SaveDataToFile(receiptNumber); 
        }
    }
}

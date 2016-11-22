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

using System.Net;
using System.Net.Sockets;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using Microsoft.Win32;

namespace TcpSend
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            string HostName = txtHost.Text;
            int prt = Int32.Parse(txtPort.Text);

            TcpClient tc = new TcpClient(HostName, prt);
            NetworkStream ns = tc.GetStream();
            FileStream fs = File.Open(txtFile.Text, FileMode.Open);

            switch (comboBox.Text)
            {
                case "Text File":
                    int data = fs.ReadByte();
                    string str = "";
                    while (data != -1)
                    {
                        ns.WriteByte((byte)data);
                        str += (char)data;
                        data = fs.ReadByte();
                    }
                    richTextBox.AppendText(str);
                    break;
                case "Binary File":
                    Bitmap bitmap = new Bitmap(System.Drawing.Image.FromStream(fs));
                    MemoryStream ms = new MemoryStream();
                    bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
                    byte[] img = ms.GetBuffer();
                    var len = BitConverter.GetBytes(img.Length);
                    //var type = new byte[1];
                    //type[0] = 0x0001;
                    //ns.Write(type, 0, type.Length);
                    ns.Write(len, 0, len.Length);
                    ns.Write(img, 0, img.Length);

                    Clipboard.Clear();
                    Clipboard.SetDataObject(bitmap);
                    richTextBox.CaretPosition = richTextBox.Document.ContentEnd;
                    richTextBox.Paste();
                    Clipboard.Clear();

                    break;
                default:
                    break;
            }

            fs.Close();
            ns.Close();
            tc.Close();
        }

        private void btnOpen_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.ShowDialog();
            string str = ofd.FileName;
            txtFile.Text = str.ToString();
        }
    }
}

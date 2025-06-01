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

namespace Exam_Add
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            // Загружаем список альбомов в ListView
            // Не забудьте создать контекст данных в классе App
            AlbumsLv.ItemsSource = App.context.Album.ToList();
        }

        private void AddAlbumBtn_Click(object sender, RoutedEventArgs e)
        {
            // Иницализируем окно
            AddAlbumWindow addAlbumWindow = new AddAlbumWindow();

            // Открываем через метод ShowDialog() для проверки на результат
            if (addAlbumWindow.ShowDialog() == true)
            {
                // Если диалоговое окно вернёт true, то можно выполнить загрузку альбомов заново для обновления списка
                AlbumsLv.ItemsSource = App.context.Album.ToList();
            }
        }
    }
}

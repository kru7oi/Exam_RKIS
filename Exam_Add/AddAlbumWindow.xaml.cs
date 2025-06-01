using Exam_Add.Model;
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
using System.Windows.Shapes;

namespace Exam_Add
{
    /// <summary>
    /// Логика взаимодействия для AddAlbumWindow.xaml
    /// </summary>
    public partial class AddAlbumWindow : Window
    {
        public AddAlbumWindow()
        {
            InitializeComponent();

            // Загружаем исполнителей и жанры в выпадающие списки
            ArtistCmb.ItemsSource = App.context.Artist.ToList();
            GenreCmb.ItemsSource = App.context.Genre.ToList();
        }

        private void AddAlbumBtn_Click(object sender, RoutedEventArgs e)
        {
            // Обязательно проверяем поля на пустые значения
            if (string.IsNullOrEmpty(AlbumTitleTb.Text) ||
                ReleaseDateDp.SelectedDate == null ||
                ArtistCmb.SelectedItem == null ||
                GenreCmb.SelectedItem == null)
            {
                // Обязательно выводим сообщение для пользователя
                MessageBox.Show("Заполните все поля", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else
            {
                // Обязательно реализовываем обработку исключений
                try
                {
                    // Создаём новый объект с типом Album, так как мы добавляем альбом :)
                    Album newAlbum = new Album
                    {
                        Title = AlbumTitleTb.Text,
                        ReleaseDate = ReleaseDateDp.SelectedDate.Value,
                        GenreId = (int)GenreCmb.SelectedValue, // из выбранного элемента берём Id, указывали это в SelectedValuePath
                        ArtistId = (int)ArtistCmb.SelectedValue, // аналогично
                    };

                    // Добавляем новый альбом в таблицу Album
                    App.context.Album.Add(newAlbum);
                    // Сохраняем изменения
                    App.context.SaveChanges();

                    // Также реализовываем сообщения для пользователя
                    MessageBox.Show("Альбом успешно добавлен", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);

                    // Возвращаем результат работы диалогового окна, нужно для обновления списка альбомов
                    DialogResult = true;
                }
                catch (Exception exception)
                {
                    // Выводим сообщения для пользователя в случае возникновения исключения
                    MessageBox.Show(exception.Message, exception.HelpLink, MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
        }
    }
}

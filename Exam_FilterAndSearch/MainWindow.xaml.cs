using Exam_FilterAndSearch.Model;
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

namespace Exam_FilterAndSearch
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // Создаём локальные списки, так как в них будут происходить изменения
        List<Album> _albums = App.context.Album.ToList();
        List<Genre> _genres = App.context.Genre.ToList();
        public MainWindow()
        {
            InitializeComponent();

            // Вставляем пункт "Все жанры" для фильтрации в локальный список
            _genres.Insert(0, new Genre() { Name = "Все жанры" });
            FilterByGenreCmb.ItemsSource = _genres;

            AlbumsLv.ItemsSource = _albums;
        }

        private void FilterAndSearchBtn_Click(object sender, RoutedEventArgs e)
        {
            // Создаём локальные переменные для хранения жанра и названия исполнителя
            Genre selectedGenre = FilterByGenreCmb.SelectedItem as Genre;
            string searchString = SearchByNameTb.Text;

            // Проверяем жанр, который выбрали на "пустоту"
            if (selectedGenre != null)
            {
                // Пишем алгоритм, где объединяем в одно условие поиск и фильтрацию
                var filteredAlbums = _albums.Where(album => (selectedGenre.Id == 0 || selectedGenre.Id == album.GenreId) && (string.IsNullOrEmpty(searchString) || album.Artist.Name.ToLower().Contains(searchString.ToLower())));

                AlbumsLv.ItemsSource = filteredAlbums;
            }
        }
    }
}

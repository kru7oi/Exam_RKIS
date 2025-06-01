using Exam_Add.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace Exam_Add
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        // Создаём контекст данных. Тип для контекста можно узнать в файле App.config в свойстве name, объекта connectionString
        public static MusicDbEntities context = new MusicDbEntities();
    }
}

using Square;

namespace Test
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Площадь круга равна {0: .###}", new Circle(25).Square());
            Console.WriteLine("Площадь треугольника равна {0: .###}", new Triangle(14, 13, 18).Square());
        }
    }
}
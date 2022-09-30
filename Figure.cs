namespace Square
{
    abstract public class Figure
    {
        abstract public double Square();
    }

    public class Circle: Figure
    {

        private double radius;
        public Circle(double radius) => this.radius = radius;
        public override double Square() => Math.PI * Math.Pow(radius, 2);

    }

    public class Triangle: Figure
    {
        private double a, b, c;
        public Triangle(double a, double b, double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }

        public override double Square()
        {
            double p = (a + b + c) / 2.0;
            return Math.Sqrt(p * (p - a) * (p - b) * (p - c));
        }

    }
}
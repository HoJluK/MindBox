using GeometryLibrary.Shapes;
using Xunit;

namespace GeometryLibrary.Tests
{
    public class GeometryCalculatorTests
    {
        [Fact]
        public void CalculateCircleArea_ValidRadius_ReturnsCorrectArea()
        {
            double radius = 5;
            Circle circle = new Circle(radius);
            double expectedArea = Math.PI * radius * radius;

            double actualArea = GeometryCalculator.CalculateArea(circle);

            Assert.Equal(expectedArea, actualArea, 1e-6);
        }

        [Fact]
        public void CalculateTriangleArea_ValidSides_ReturnsCorrectArea()
        {
            double sideA = 3;
            double sideB = 4;
            double sideC = 5;
            Triangle triangle = new Triangle(sideA, sideB, sideC);
            double expectedArea = 6;

            double actualArea = GeometryCalculator.CalculateArea(triangle);

            Assert.Equal(expectedArea, actualArea, 1e-6);
        }

        [Fact]
        public void IsRightTriangle_RightTriangle_ReturnsTrue()
        {
            Triangle triangle = new Triangle(3, 4, 5);

            Assert.True(triangle.IsRightTriangle());
        }

        [Fact]
        public void IsRightTriangle_NotRightTriangle_ReturnsFalse()
        {
            Triangle triangle = new Triangle(2, 3, 4);

            Assert.False(triangle.IsRightTriangle());
        }
    }
}
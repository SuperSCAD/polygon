from super_scad.scad.Context import Context
from super_scad.scad.Scad import Scad

from super_scad_polygon.SmoothEquilateralTriangle import SmoothEquilateralTriangle
from test.Fillet import Fillet
from test.ScadTestCase import ScadTestCase


class SmoothEquilateralTriangleTest(ScadTestCase):
    """
    Tests cases for SmoothEquilateralTriangle.
    """

    # ------------------------------------------------------------------------------------------------------------------
    def test_plain_smooth_equilateral_triangle(self) -> None:
        """
        Tests plain smooth equilateral triangle.
        """
        scad = Scad(context=Context(fa=1.0, fs=0.1, eps=0.1))
        triangle = SmoothEquilateralTriangle(side_length=10.0,
                                             profiles=Fillet(radius=1.0),
                                             extend_by_eps_sides={2})

        path_actual, path_expected = self.paths()
        scad.run_super_scad(triangle, path_actual)
        actual = path_actual.read_text()
        expected = path_expected.read_text()
        self.assertEqual(expected, actual)

# ----------------------------------------------------------------------------------------------------------------------

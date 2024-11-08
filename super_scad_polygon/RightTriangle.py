from typing import List

from super_scad.d2.Polygon import Polygon
from super_scad.d2.PolygonMixin import PolygonMixin
from super_scad.scad.ArgumentAdmission import ArgumentAdmission
from super_scad.scad.Context import Context
from super_scad.scad.ScadWidget import ScadWidget
from super_scad.type import Vector2


class RightTriangle(ScadWidget, PolygonMixin):
    """
    Widget for right triangles (a.k.a. right-angled triangle, orthogonal triangle, or rectangular triangle).
    """

    # ------------------------------------------------------------------------------------------------------------------
    def __init__(self,
                 *,
                 width: float,
                 depth: float,
                 convexity: int | None = None):
        """
        Object constructor.

        :param width: The width of the right triangle.
        :param depth: The depth of the right triangle.
        :param convexity: Number of "inward" curves, i.e., expected number of path crossings of an arbitrary line
                          through the child widget.
        """
        ScadWidget.__init__(self, args=locals())
        PolygonMixin.__init__(self)

        self._validate_arguments()

    # ------------------------------------------------------------------------------------------------------------------
    def _validate_arguments(self) -> None:
        """
        Validates the arguments supplied to the constructor of this SuperSCAD widget.
        """
        admission = ArgumentAdmission(self._args)
        admission.validate_required({'width'}, {'depth'})

    # ------------------------------------------------------------------------------------------------------------------
    @property
    def width(self) -> float:
        """
        Returns the width of the right triangle.
        """
        return self.uc(self._args['width'])

    # ------------------------------------------------------------------------------------------------------------------
    @property
    def depth(self) -> float:
        """
        Returns the depth of the right triangle.
        """
        return self.uc(self._args['depth'])

    # ------------------------------------------------------------------------------------------------------------------
    @property
    def nodes(self) -> List[Vector2]:
        """
        Returns the nodes of this right triangle.
        """
        return [Vector2(0.0, 0.0), Vector2(0.0, self.depth), Vector2(self.width, 0.0)]

    # ------------------------------------------------------------------------------------------------------------------
    @property
    def convexity(self) -> int | None:
        """
        Returns the convexity of this polygon.
        """
        return self._args.get('convexity')

    # ------------------------------------------------------------------------------------------------------------------
    def build_polygon(self, context: Context) -> ScadWidget:
        """
        Builds a SuperSCAD widget.

        :param context: The build context.
        """
        return Polygon(primary=self.nodes, convexity=self.convexity)

    # ------------------------------------------------------------------------------------------------------------------
    def build(self, context: Context) -> ScadWidget:
        """
        Builds a SuperSCAD widget.

        :param context: The build context.
        """
        return self.build_polygon(context)

# ----------------------------------------------------------------------------------------------------------------------

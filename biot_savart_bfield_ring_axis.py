import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from mpl_toolkits.mplot3d import Axes3D  # noqa: F401


def norm(v):
    v = np.asarray(v, dtype=float)
    n = np.linalg.norm(v)
    if n == 0:
        return v
    return v / n


def compute_geometry(a, x, phi):
    """
    Ring lies in yz-plane, centered at origin.
    Source point on ring:
        s(phi) = (0, a cos(phi), a sin(phi))
    Tangent direction:
        dl/dphi = (0, -a sin(phi), a cos(phi))
    Test point:
        P = (x, 0, 0)
    """
    source = np.array([0.0, a * np.cos(phi), a * np.sin(phi)])
    dl = np.array([0.0, -a * np.sin(phi), a * np.cos(phi)])
    P = np.array([x, 0.0, 0.0])
    rvec = P - source
    dB = np.cross(dl, rvec)
    return source, dl, P, rvec, dB


def set_equal_axes(ax, limit):
    ax.set_xlim(-limit, limit)
    ax.set_ylim(-limit, limit)
    ax.set_zlim(-limit, limit)
    ax.set_box_aspect([1, 1, 1])


def draw_scene(ax, a, x, phi):
    ax.cla()

    source, dl, P, rvec, dB = compute_geometry(a, x, phi)

    # Ring
    t = np.linspace(0, 2 * np.pi, 400)
    ring_x = np.zeros_like(t)
    ring_y = a * np.cos(t)
    ring_z = a * np.sin(t)
    ax.plot(ring_x, ring_y, ring_z, lw=2, label="ring")

    # Axes
    axis_len = max(1.8 * a, abs(x) + 0.6, 1.5)
    ax.quiver(0, 0, 0, axis_len, 0, 0, color="red", arrow_length_ratio=0.08)
    ax.quiver(0, 0, 0, 0, axis_len, 0, color="green", arrow_length_ratio=0.08)
    ax.quiver(0, 0, 0, 0, 0, axis_len, color="black", arrow_length_ratio=0.08)
    ax.text(axis_len, 0, 0, "+x", color="red")
    ax.text(0, axis_len, 0, "+y", color="green")
    ax.text(0, 0, axis_len, "+z", color="black")

    # Points
    ax.scatter(*source, s=60, color="blue")
    ax.text(*(source + np.array([0.08, 0.08, 0.08])), "source", color="blue")

    ax.scatter(*P, s=60, color="crimson")
    ax.text(*(P + np.array([0.08, 0.08, 0.08])), "P", color="crimson")

    # Scale vectors for display
    dl_disp = norm(dl) * (0.55 * max(a, 0.8))
    r_disp = rvec
    dB_disp = norm(dB) * (0.75 * max(a, 0.8))

    # Vectors
    ax.quiver(*source, *dl_disp, color="purple", arrow_length_ratio=0.15, linewidth=2)
    ax.text(*(source + dl_disp + np.array([0.05, 0.05, 0.05])), "I dℓ", color="purple")

    ax.quiver(*source, *r_disp, color="teal", arrow_length_ratio=0.08, linewidth=2)
    ax.text(*(source + 0.55 * r_disp + np.array([0.05, 0.05, 0.05])), "r", color="teal")

    # Draw dB at the field point P
    ax.quiver(*P, *dB_disp, color="orange", arrow_length_ratio=0.15, linewidth=2)
    ax.text(*(P + dB_disp + np.array([0.05, 0.05, 0.05])), "dB ∝ dℓ × r", color="orange")

    # Dashed line from source to P
    ax.plot(
        [source[0], P[0]],
        [source[1], P[1]],
        [source[2], P[2]],
        linestyle="--",
        linewidth=1,
        color="gray",
        alpha=0.6,
    )

    # Title with components
    ax.set_title(
        "Biot–Savart geometry for one current element\n"
        f"a={a:.2f}, x={x:.2f}, phi={np.degrees(phi):.1f}°\n"
        f"source=({source[0]:.2f}, {source[1]:.2f}, {source[2]:.2f})   "
        f"P=({P[0]:.2f}, {P[1]:.2f}, {P[2]:.2f})   "
        f"r=({rvec[0]:.2f}, {rvec[1]:.2f}, {rvec[2]:.2f})   "
        f"dℓ×r=({dB[0]:.2f}, {dB[1]:.2f}, {dB[2]:.2f})"
    )

    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_zlabel("z")

    lim = max(2.0, 1.6 * a, abs(x) + 0.8)
    set_equal_axes(ax, lim)
    ax.view_init(elev=22, azim=-55)
    ax.grid(True)


def main():
    a0 = 1.0
    x0 = 1.2
    phi0 = 0.0

    fig = plt.figure(figsize=(10, 8))
    ax = fig.add_subplot(111, projection="3d")
    plt.subplots_adjust(left=0.1, bottom=0.22)

    draw_scene(ax, a0, x0, phi0)

    # Sliders
    ax_a = plt.axes([0.15, 0.12, 0.7, 0.03])
    ax_x = plt.axes([0.15, 0.08, 0.7, 0.03])
    ax_phi = plt.axes([0.15, 0.04, 0.7, 0.03])

    slider_a = Slider(ax_a, "a", 0.4, 2.0, valinit=a0)
    slider_x = Slider(ax_x, "x", -2.5, 2.5, valinit=x0)
    slider_phi = Slider(ax_phi, "phi (deg)", 0.0, 360.0, valinit=np.degrees(phi0))

    def update(_):
        a = slider_a.val
        x = slider_x.val
        phi = np.radians(slider_phi.val)
        draw_scene(ax, a, x, phi)
        fig.canvas.draw_idle()

    slider_a.on_changed(update)
    slider_x.on_changed(update)
    slider_phi.on_changed(update)

    plt.show()


if __name__ == "__main__":
    main()
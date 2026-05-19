.class public final Lcom/oplus/quickstep/views/IconContainerSurfaceView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-direct {p1, p2, p2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

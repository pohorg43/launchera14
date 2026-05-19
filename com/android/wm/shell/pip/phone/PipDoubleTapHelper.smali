.class public Lcom/android/wm/shell/pip/phone/PipDoubleTapHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SIZE_SPEC_CUSTOM:I = 0x2

.field public static final SIZE_SPEC_DEFAULT:I = 0x0

.field public static final SIZE_SPEC_MAX:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMaxOrDefaultPipSizeSpec(Lcom/android/wm/shell/pip/PipBoundsState;)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMinSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-le p0, v0, :cond_1b

    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static nextSizeSpec(Lcom/android/wm/shell/pip/PipBoundsState;Landroid/graphics/Rect;)I
    .registers 8

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v3

    :goto_15
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v1, v4, :cond_3b

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v1, v4, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v3

    :goto_3c
    if-eqz v1, :cond_4d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_4d

    return v2

    :cond_4d
    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne p1, v2, :cond_5c

    return v3

    :cond_5c
    if-nez v1, :cond_66

    if-eqz v0, :cond_61

    goto :goto_66

    :cond_61
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipDoubleTapHelper;->getMaxOrDefaultPipSizeSpec(Lcom/android/wm/shell/pip/PipBoundsState;)I

    move-result p0

    return p0

    :cond_66
    :goto_66
    const/4 p0, 0x2

    return p0
.end method

.class public Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTaskBoundsChange(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/windowdecor/WindowDecoration;Landroid/graphics/Rect;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .registers 4

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p3, p0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public static changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    and-int/lit8 p2, p0, 0x1

    if-eqz p2, :cond_2e

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->left:I

    if-le p2, v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move p2, v1

    :goto_2c
    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_2e
    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_40

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->right:I

    if-ge p2, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move p2, v3

    :goto_3e
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_40
    and-int/lit8 p2, p0, 0x4

    if-eqz p2, :cond_52

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v5, p4, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->top:I

    if-le p2, v5, :cond_4f

    goto :goto_50

    :cond_4f
    move p2, v2

    :goto_50
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_52
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_64

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p4, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p2, :cond_61

    goto :goto_62

    :cond_61
    move p0, v4

    :goto_62
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_64
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p5, p6}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->getMinWidth(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_75

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_75
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p5, p6}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->getMinHeight(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_86

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_86
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, p0, :cond_97

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ne v2, p0, :cond_97

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-ne v3, p0, :cond_97

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v4, p0, :cond_97

    return v0

    :cond_97
    const/4 p0, 0x1

    return p0
.end method

.method private static getDefaultMinSize(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F
    .registers 3

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3bcccccd  # 0.00625f

    mul-float/2addr p0, v0

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1
.end method

.method private static getMinHeight(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F
    .registers 3

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-gez v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->getDefaultMinSize(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F

    move-result p0

    goto :goto_c

    :cond_b
    int-to-float p0, v0

    :goto_c
    return p0
.end method

.method private static getMinWidth(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F
    .registers 3

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    if-gez v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->getDefaultMinSize(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)F

    move-result p0

    goto :goto_c

    :cond_b
    int-to-float p0, v0

    :goto_c
    return p0
.end method

.method public static setPositionOnDrag(Lcom/android/wm/shell/windowdecor/WindowDecoration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/view/SurfaceControl$Transaction;FF)V
    .registers 7

    invoke-static {p1, p2, p3, p5, p6}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p4, p0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V
    .registers 6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int p1, p3

    float-to-int p2, p4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

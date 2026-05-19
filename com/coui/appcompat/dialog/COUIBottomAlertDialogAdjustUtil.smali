.class public Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 7

    if-nez p1, :cond_15

    if-eqz p2, :cond_15

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_9d

    :cond_15
    const/4 v0, 0x1

    if-nez p2, :cond_58

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/coui/appcompat/uiutil/FollowHandManager;->h(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {p2, v1, v2, v0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->a(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p2

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->e()I

    move-result v2

    if-ge v1, v2, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41000000  # 8.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_77

    :cond_58
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1, p2}, Lcom/coui/appcompat/uiutil/FollowHandManager;->h(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->a(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p2

    :cond_77
    :goto_77
    iget p1, p2, Landroid/graphics/Point;->y:I

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_8e

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p3

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_8e
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_9d
    return-void
.end method

.method public static b(Landroid/view/Window;II)I
    .registers 3
    .param p0  # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_12

    if-nez p1, :cond_d

    goto :goto_12

    :cond_d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    return p2
.end method

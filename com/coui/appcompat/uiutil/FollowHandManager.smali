.class public Lcom/coui/appcompat/uiutil/FollowHandManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/graphics/Rect;

.field public static b:Landroid/graphics/Rect;

.field public static c:[I

.field public static d:[I

.field public static e:Landroid/graphics/Point;

.field public static f:Landroid/graphics/Rect;

.field public static g:Landroid/graphics/Rect;

.field public static h:Landroid/graphics/Rect;

.field public static i:I

.field public static j:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->c:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->d:[I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;IIZ)Landroid/graphics/Point;
    .registers 12

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->f()Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1b

    :cond_17
    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1b
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->f()Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    goto :goto_2a

    :cond_26
    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_2a
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->b()I

    move-result v4

    sub-int/2addr v4, v2

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int v7, p2, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v5

    if-lt v4, v7, :cond_48

    add-int/2addr v6, v2

    add-int/2addr v6, p2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->b()I

    move-result p2

    if-ge v6, p2, :cond_4b

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    goto :goto_4b

    :cond_48
    sub-int/2addr v3, p2

    sub-int v2, v3, v5

    :cond_4b
    :goto_4b
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz p2, :cond_52

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :cond_52
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_56
    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v3

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v3

    sub-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz p2, :cond_6c

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_70

    :cond_6c
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_70
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p3, :cond_90

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_90

    sget-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->c:[I

    const/4 p2, 0x0

    aget p3, p0, p2

    if-lez p3, :cond_90

    aget p0, p0, p2

    add-int/2addr p1, p0

    :cond_90
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->c()I

    move-result p0

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public static b()I
    .registers 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    :cond_7
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_b
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static c()I
    .registers 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_b

    :cond_7
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_b
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d()I
    .registers 2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->j:I

    if-gez v1, :cond_16

    add-int/2addr v0, v1

    goto :goto_16

    :cond_10
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :cond_16
    :goto_16
    return v0
.end method

.method public static e()I
    .registers 2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->i:I

    if-gez v1, :cond_16

    add-int/2addr v0, v1

    goto :goto_16

    :cond_10
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    :cond_16
    :goto_16
    return v0
.end method

.method public static f()Z
    .registers 4

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->d:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_16

    aget v2, v0, v3

    if-nez v2, :cond_16

    const/4 v2, 0x2

    aget v2, v0, v2

    if-nez v2, :cond_16

    const/4 v2, 0x3

    aget v0, v0, v2

    if-eqz v0, :cond_17

    :cond_16
    move v1, v3

    :cond_17
    return v1
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->e(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double v2, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_31

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-nez p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p0, 0x1

    :goto_32
    return p0
.end method

.method public static h(Landroid/view/View;II)V
    .registers 11

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v5, 0x0

    sput-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p1, :cond_1f

    if-eqz p2, :cond_33

    :cond_1f
    neg-int v5, p1

    neg-int v6, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr p2, v7

    aput v5, v0, v1

    aput v6, v0, v2

    aput p1, v0, v3

    aput p2, v0, v4

    :cond_33
    new-array p1, v3, [I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sput-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sput-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    aget v6, v0, v1

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    aget v6, v0, v2

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    aget v3, v0, v3

    add-int/2addr v5, v3

    iput v5, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    aget v0, v0, v4

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, p1, v1

    aget v3, p1, v2

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, p1, v1

    aget v0, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p1, v1

    aget p1, p1, v2

    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->c:[I

    sub-int/2addr p2, v3

    aput p2, v4, v1

    sub-int/2addr v0, p1

    aput v0, v4, v2

    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    aget p2, v4, v1

    neg-int p2, p2

    aget v0, v4, v2

    neg-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    sput p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    sput p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->j:I

    sget-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->d()I

    move-result p1

    iput p1, p0, Landroid/graphics/Point;->x:I

    sget-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->e:Landroid/graphics/Point;

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->e()I

    move-result p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

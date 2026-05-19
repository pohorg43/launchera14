.class public final Lq1/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/i$b$a;
    }
.end annotation


# static fields
.field public static e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq1/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Lq1/i$b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq1/i$b;->b:Ljava/util/List;

    iput-object p1, p0, Lq1/i$b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lq1/i$b;->d:Lq1/i$b$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lq1/i$b;->d:Lq1/i$b$a;

    iget-object p0, p0, Lq1/i$b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(III)I
    .registers 6

    sub-int v0, p2, p3

    if-lez v0, :cond_5

    return v0

    :cond_5
    iget-boolean v0, p0, Lq1/i$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sub-int/2addr p1, p3

    if-lez p1, :cond_17

    return p1

    :cond_17
    iget-object p1, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_69

    const/4 p1, -0x2

    if-ne p2, p1, :cond_69

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object p0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lq1/i$b;->e:Ljava/lang/Integer;

    if-nez p1, :cond_62

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const-string p1, "Argument must not be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lq1/i$b;->e:Ljava/lang/Integer;

    :cond_62
    sget-object p0, Lq1/i$b;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_69
    return v1
.end method

.method public final c()I
    .registers 4

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lq1/i$b;->b(III)I

    move-result p0

    return p0
.end method

.method public final d()I
    .registers 4

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lq1/i$b;->b(III)I

    move-result p0

    return p0
.end method

.method public final e(II)Z
    .registers 5

    const/high16 p0, -0x80000000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_b

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    move p1, v0

    goto :goto_c

    :cond_b
    :goto_b
    move p1, v1

    :goto_c
    if-eqz p1, :cond_19

    if-gtz p2, :cond_15

    if-ne p2, p0, :cond_13

    goto :goto_15

    :cond_13
    move p0, v0

    goto :goto_16

    :cond_15
    :goto_15
    move p0, v1

    :goto_16
    if-eqz p0, :cond_19

    move v0, v1

    :cond_19
    return v0
.end method

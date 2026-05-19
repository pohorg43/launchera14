.class Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SizeSpecDefaultImpl"
.end annotation


# instance fields
.field private mDefaultSizePercent:F

.field private mMinimumSizePercent:F

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    return-void
.end method


# virtual methods
.method public getDefaultSize(F)Landroid/util/Size;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$200(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getMinSize(F)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mDefaultSizePercent:F

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$500(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F

    move-result v1

    cmpg-float v1, p1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-lez v1, :cond_6e

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4c

    goto :goto_6e

    :cond_4c
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    invoke-static {p0, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result p0

    mul-float/2addr p0, p0

    mul-float v0, p1, p1

    add-float/2addr v0, v2

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-float p0, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_7f

    :cond_6e
    :goto_6e
    cmpg-float p0, p1, v2

    if-gtz p0, :cond_79

    int-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_82

    :cond_79
    int-to-float p0, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_7f
    move v3, v0

    move v0, p0

    move p0, v3

    :goto_82
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public getMaxSize(F)Landroid/util/Size;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_67

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sub-int/2addr v0, v2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_7a

    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr v0, v3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    move v5, p1

    move p1, p0

    move p0, v5

    :goto_7a
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getMinSize(F)Landroid/util/Size;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$200(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_43

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    mul-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_5b

    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    mul-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    move v2, p1

    move p1, p0

    move p0, v2

    :goto_5b
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
    .registers 5

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_23

    int-to-float p1, p0

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2c

    :cond_23
    int-to-float p1, p0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, p1

    move p1, p0

    move p0, v1

    :goto_2c
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method public reloadResources()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$000(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    sget v2, Lcom/android/wm/shell/R$dimen;->config_pictureInPictureAspectRatioLimitForMinSize:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$402(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;F)F

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$502(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;F)F

    sget v1, Lcom/android/wm/shell/R$dimen;->config_pictureInPictureDefaultSizePercent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mDefaultSizePercent:F

    sget v1, Lcom/android/wm/shell/R$fraction;->config_pipShortestEdgePercent:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    return-void
.end method

.class Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;
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
    name = "SizeSpecLargeScreenOptimizedImpl"
.end annotation


# static fields
.field private static final DEFAULT_OPTIMIZED_ASPECT_RATIO:F = 0.5625f


# instance fields
.field private final mDefaultSizePercent:F

.field private final mMinimumSizePercent:F

.field private mOptimizedAspectRatio:F

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.android.wm.shell.pip.phone.def_percentage"

    const-string v0, "0.6"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    const-string p1, "com.android.wm.shell.pip.phone.min_percentage"

    const-string v0, "0.5"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    return-void
.end method


# virtual methods
.method public getDefaultSize(F)Landroid/util/Size;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMinSize(F)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$200(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getMaxSize(F)Landroid/util/Size;
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    cmpl-float v2, p1, p0

    if-ltz v2, :cond_74

    div-float v2, v1, p0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_74

    int-to-float v0, v0

    mul-float v2, p0, v0

    sub-float p0, p1, p0

    mul-float/2addr p0, v0

    add-float/2addr v1, p1

    div-float/2addr p0, v1

    add-float/2addr p0, v2

    float-to-int v0, p0

    int-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_88

    :cond_74
    cmpl-float p0, p1, v1

    if-lez p0, :cond_7f

    int-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_88

    :cond_7f
    int-to-float p0, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move v4, v0

    move v0, p0

    move p0, v4

    :goto_88
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public getMinSize(F)Landroid/util/Size;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$200(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_42

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_55

    :cond_42
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v3, p1

    move p1, p0

    move p0, v3

    :goto_55
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
    .registers 6

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-ge v1, v0, :cond_4d

    cmpg-float v0, p2, v2

    if-gtz v0, :cond_4d

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result v1

    int-to-float p0, v1

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_65

    :cond_4d
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result v0

    if-ge p1, v0, :cond_65

    cmpl-float v0, p2, v2

    if-lez v0, :cond_65

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    move-result p1

    int-to-float p0, p1

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_65
    :goto_65
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public reloadResources()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->access$000(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->config_pipLargeScreenOptimizedAspectRatio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    const/high16 v0, 0x3f100000  # 0.5625f

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    :cond_1c
    return-void
.end method

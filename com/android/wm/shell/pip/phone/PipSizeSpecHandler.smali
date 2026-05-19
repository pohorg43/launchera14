.class public Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;,
        Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;,
        Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PipSizeSpecHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultMinSize:I

.field private mMaxAspectRatioForMinSize:F

.field private mMinAspectRatioForMinSize:F

.field private mOverridableMinSize:I

.field private mOverrideMinSize:Landroid/util/Size;

.field private final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field private mScreenEdgeInsets:Landroid/graphics/Point;

.field private final mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->supportsPipSizeLargeScreen()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_16

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    goto :goto_1d

    :cond_16
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    :goto_1d
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->reloadResources()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMaxAspectRatioForMinSize:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;F)F
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMaxAspectRatioForMinSize:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMinAspectRatioForMinSize:F

    return p0
.end method

.method public static synthetic access$502(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;F)F
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMinAspectRatioForMinSize:F

    return p1
.end method

.method private getDisplayBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private isTv()Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private reloadResources()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->default_minimal_size_pip_resizable_task:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    sget v1, Lcom/android/wm/shell/R$dimen;->overridable_minimal_size_pip_resizable_task:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    sget v1, Lcom/android/wm/shell/R$string;->config_defaultPictureInPictureScreenEdgeInsets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-nez v1, :cond_30

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_50

    :cond_30
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    :goto_50
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->reloadResources()V

    return-void
.end method


# virtual methods
.method public adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2a

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_2a
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mSizeSpecSourceImpl="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mOverrideMinSize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mScreenEdgeInsets="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultSize(F)Landroid/util/Size;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getInsetBounds()Landroid/graphics/Rect;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getMaxSize(F)Landroid/util/Size;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getMinEdgeSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    if-nez v0, :cond_7

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    move-result p0

    :goto_b
    return p0
.end method

.method public getMinSize(F)Landroid/util/Size;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMinSize(F)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getOverrideMinEdgeSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getOverrideMinSize()Landroid/util/Size;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    if-ge v0, v1, :cond_1e

    :cond_16
    new-instance v0, Landroid/util/Size;

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    invoke-direct {v0, p0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1e
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    return-object p0
.end method

.method public getScreenEdgeInsets()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    return-object p0
.end method

.method public getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->reloadResources()V

    return-void
.end method

.method public setOverrideMinSize(Landroid/util/Size;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    return-void
.end method

.method public supportsPipSizeLargeScreen()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "persist.wm.debug.enable_pip_size_large_screen"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->isTv()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

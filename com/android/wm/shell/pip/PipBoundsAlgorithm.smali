.class public Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INVALID_SNAP_FRACTION:F = -1.0f

.field private static final MOBILE_SCREEN_SHARE_TARGET:Ljava/lang/String; = "com.android.incallui/.OplusInCallActivity"

.field private static final TAG:Ljava/lang/String; = "PipBoundsAlgorithm"

.field private static sIsMobileScreenSharePip:Z


# instance fields
.field private mDefaultAspectRatio:F

.field private mDefaultStackGravity:I

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mMobileScreenShareRect:Landroid/graphics/Rect;

.field private mMobileScreenShareStackGravity:I

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private final mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

.field public final mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

.field private final mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

.field private mStackGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    iput-object p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    iput-object p5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    return-void
.end method

.method private dpToPx(FLandroid/util/DisplayMetrics;)I
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method private getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object p1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->TAG:Ljava/lang/String;

    const-string p2, "for mobile screen sharing, returns a fixed bounds"

    invoke-static {p1, p2}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    return-object p0

    :cond_18
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, p2, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-object v7

    :cond_3b
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p2

    sget-boolean v2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    if-eqz v2, :cond_54

    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareStackGravity:I

    iput v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mStackGravity:I

    goto :goto_58

    :cond_54
    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    iput v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mStackGravity:I

    :goto_58
    if-eqz v0, :cond_6f

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, p2, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_a1

    :cond_6f
    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mStackGravity:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result p2

    if-eqz p2, :cond_89

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result p2

    goto :goto_8a

    :cond_89
    move p2, v1

    :goto_8a
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->isShelfShowing()Z

    move-result v5

    if-eqz v5, :cond_98

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getShelfHeight()I

    move-result v1

    :cond_98
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p1

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_a1
    return-object v7
.end method

.method public static getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_18

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-object p0

    :cond_18
    return-object v0
.end method

.method public static getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->isSourceRectHintValidForEnterPip(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method

.method public static isMobileScreenSharePip()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    return v0
.end method

.method public static isSourceRectHintValidForEnterPip(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private reloadResources(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$dimen;->config_pictureInPictureDefaultAspectRatio:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    sget v0, Lcom/android/wm/shell/R$integer;->config_defaultPictureInPictureGravity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    sget v0, Lcom/android/wm/shell/R$integer;->config_mobileScreenSharePictureInPictureGravity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareStackGravity:I

    sget v0, Lcom/android/wm/shell/R$string;->config_defaultPictureInPictureScreenEdgeInsets:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    :cond_2b
    sget v0, Lcom/android/internal/R$dimen;->config_pictureInPictureMinAspectRatio:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    sget v0, Lcom/android/internal/R$dimen;->config_pictureInPictureMaxAspectRatio:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    return-void
.end method

.method public static resetMobileScreenSharePip()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    return-void
.end method

.method private transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->isValidPictureInPictureAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    :cond_e
    return-object v0
.end method


# virtual methods
.method public adjustNormalBoundsToFitMenu(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .registers 9

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_18

    return-object p1

    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v4

    :goto_2c
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_38

    move v2, v3

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    if-eqz v1, :cond_79

    if-eqz v2, :cond_79

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v1, v2

    if-lez p1, :cond_68

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_9c

    :cond_68
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_9c

    :cond_79
    if-eqz v1, :cond_8c

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_9c

    :cond_8c
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_9c
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result p1

    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    return-object v0
.end method

.method public applySnapFraction(Landroid/graphics/Rect;F)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->TAG:Ljava/lang/String;

    const-string v2, "mDefaultAspectRatio="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    const-string/jumbo v2, "mMinAspectRatio="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    const-string/jumbo v2, "mMaxAspectRatio="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    const-string v2, "mDefaultStackGravity="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    const-string/jumbo v2, "mSnapAlgorithm"

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultAspectRatio()F

    move-result p0

    :goto_11
    return p0
.end method

.method public getDefaultAspectRatio()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    return p0
.end method

.method public getDefaultBounds()Landroid/graphics/Rect;
    .registers 3

    const/high16 v0, -0x40800000  # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getEntryDestinationBounds()Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    move-result-object v0

    sget-boolean v1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getRestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v3

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v2, v0, v3, p0, v1}, Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getReentryState()Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSnapFraction()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_19
    sget-boolean v2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    if-eqz v2, :cond_34

    sget-object p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currently mobile screen sharing, return bounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_34
    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v3

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getInsetBounds(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_8

    goto :goto_2d

    :cond_8
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-lez v1, :cond_2d

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-lez v1, :cond_2d

    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result p2

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 7

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getNormalBounds()Landroid/graphics/Rect;
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    return-object p0
.end method

.method public getSnapFraction(Landroid/graphics/Rect;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    return-void
.end method

.method public resetMobileScreenShareRect()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setMobileScreenSharePipParams(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/PictureInPictureParams;)V
    .registers 8

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    sget-object v1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMobileScreenSharePipParams, realActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz p2, :cond_64

    :try_start_28
    const-string v4, "com.android.incallui/.OplusInCallActivity"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mMobileScreenShareRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_61

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    const-string/jumbo p0, "sIsMobileScreenSharePip set to true"

    invoke-static {v1, p0}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_61
    sput-boolean v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    goto :goto_68

    :cond_64
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMobileScreenShareRect:Landroid/graphics/Rect;

    sput-boolean v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->sIsMobileScreenSharePip:Z

    :goto_68
    monitor-exit v2

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_28 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v0

    if-nez p3, :cond_1c

    if-eqz p4, :cond_15

    goto :goto_1c

    :cond_15
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p2

    goto :goto_2f

    :cond_1c
    :goto_1c
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    new-instance p4, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p4, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p3, p4, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object p2

    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p4, v2

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

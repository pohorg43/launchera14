.class public Lcom/android/launcher3/views/OplusClipIconView;
.super Lcom/android/launcher3/views/ClipIconView;
.source ""


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final DEFAULT_ICON_SIZE:F = 150.0f

.field private static final FOREGROUND_ANIMATION_PATH:Landroid/view/animation/PathInterpolator;

.field private static final NUM_2F:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "OplusClipIconView"


# instance fields
.field private mCardRadiusScale:F

.field private mDoAntiAlias:Z

.field private mForegroundAnimator:Landroid/animation/ValueAnimator;

.field private mForegroundIsTrans:Z

.field private mIsCardDrawable:Z

.field private mIsFolderIcon:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mTmpRadiusArr:[F

.field private mUXScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/views/OplusClipIconView;->FOREGROUND_ANIMATION_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/OplusClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/OplusClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mForegroundIsTrans:Z

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/android/launcher3/views/OplusClipIconView;->mUXScale:F

    iput-boolean p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsCardDrawable:Z

    iput-boolean p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    const/16 p2, 0x8

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mTmpRadiusArr:[F

    iput p3, p0, Lcom/android/launcher3/views/OplusClipIconView;->mCardRadiusScale:F

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/views/OplusClipIconView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/views/OplusClipIconView;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/views/OplusClipIconView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mCardRadiusScale:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/views/OplusClipIconView;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mTmpRadiusArr:[F

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/launcher3/views/OplusClipIconView;[F)[F
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mTmpRadiusArr:[F

    return-object p1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 3

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mDoAntiAlias:Z

    if-eqz v1, :cond_c0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconSize()I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x43160000  # 150.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v4, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_59

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw : iconSize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , scale = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , offset = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , iconSizePx = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const-string v5, "OplusClipIconView"

    invoke-static {v3, v1, v5}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_59
    new-instance v1, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    invoke-direct {v1, v3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->superDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_97

    sget-object v2, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_FILTER:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    sget-object v2, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v4, v5}, Lcom/android/launcher3/views/OplusClipIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_97
    iget-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    sget-object v3, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v5, p0}, Lcom/android/launcher3/views/OplusClipIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_e8

    :cond_c0
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_c7

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_c7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->superDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d1
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransX:F

    iget v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_e8
    :goto_e8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public isTouchVisibleRegion(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsSupportAdaptiveAnimation:Z

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_15
    invoke-super {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->isTouchVisibleRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public recycle()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/views/ClipIconView;->recycle()V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mForegroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mForegroundAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mDoAntiAlias:Z

    return-void
.end method

.method public setBackgroundDrawableBounds(FZ)V
    .registers 4

    iget p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mUXScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9

    mul-float/2addr p1, p2

    :cond_9
    sget-object p2, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p2, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-boolean p1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1c
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-static {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->isTargetPath(Landroid/graphics/Path;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mDoAntiAlias:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "setClipPath: mBackgroud: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDoAntiAlias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mDoAntiAlias:Z

    const-string v2, "OplusClipIconView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_26
    invoke-super {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->setClipPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
    .registers 13
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-boolean p2, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    instance-of v0, p1, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsCardDrawable:Z

    instance-of v0, p1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    if-nez v0, :cond_29

    if-eqz p2, :cond_27

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isAdaptiveIconAnimSupportted()Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_29

    :cond_27
    move p2, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move p2, v1

    :goto_2a
    iput-boolean p2, p0, Lcom/android/launcher3/views/ClipIconView;->mIsSupportAdaptiveAnimation:Z

    const-string/jumbo p2, "setIcon: mIsAdaptiveIcon: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v3, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " (drawable): "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "OplusClipIconView"

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    if-eqz p2, :cond_166

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_5c

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_5c
    iput-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6a

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_6e

    :cond_6a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_6e
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    if-nez v0, :cond_9c

    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9c
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :cond_bc
    iget-boolean v0, p5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_d1

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_e1

    :cond_d1
    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, v0

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_e1
    iget-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v0, v3

    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v0, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_114

    :cond_ff
    invoke-virtual {p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    iget v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :goto_114
    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p4, :cond_12d

    iget-object p4, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p4, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    move v0, v3

    goto :goto_136

    :cond_12d
    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v2, v2, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_136
    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    if-eqz p1, :cond_13c

    move p1, v2

    goto :goto_144

    :cond_13c
    iget-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    :goto_144
    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-boolean p1, p5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/OplusClipIconView;->setBackgroundDrawableBounds(FZ)V

    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Lcom/android/launcher3/views/OplusClipIconView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/views/OplusClipIconView$1;-><init>(Lcom/android/launcher3/views/OplusClipIconView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    goto :goto_18b

    :cond_166
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p2, p0, Lcom/android/launcher3/views/OplusClipIconView;->mIsCardDrawable:Z

    if-eqz p2, :cond_185

    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p2, v2, v2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p2, Lcom/android/launcher3/views/OplusClipIconView$2;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/views/OplusClipIconView$2;-><init>(Lcom/android/launcher3/views/OplusClipIconView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    goto :goto_18b

    :cond_185
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :goto_18b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;",
            "Landroid/graphics/RectF;",
            "FFFIZFF",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            "Lcom/android/launcher3/DeviceProfile;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v10, p4

    move-object/from16 v11, p10

    if-eqz v1, :cond_d

    iget v1, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    goto :goto_f

    :cond_d
    iget v1, v0, Lcom/android/launcher3/views/OplusClipIconView;->mUXScale:F

    :goto_f
    iput v1, v0, Lcom/android/launcher3/views/OplusClipIconView;->mUXScale:F

    iget-boolean v1, v0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v1, :cond_1f

    iget v1, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v1, p11

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual/range {p10 .. p10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    goto :goto_24

    :cond_1f
    iget v1, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p10 .. p10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    :goto_24
    iget v1, v2, Landroid/graphics/RectF;->top:F

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p7, :cond_30

    const/high16 v4, 0x41200000  # 10.0f

    move v8, v4

    goto :goto_31

    :cond_30
    move v8, v1

    :goto_31
    invoke-static {v10, p3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v5, p4

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    div-float v4, p5, p8

    iput v4, v0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    iget-boolean v4, v0, Lcom/android/launcher3/views/ClipIconView;->mIsSupportAdaptiveAnimation:Z

    if-eqz v4, :cond_10f

    iget-object v4, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p7, :cond_58

    cmpg-float v7, v3, v10

    if-ltz v7, :cond_5e

    :cond_58
    if-nez p7, :cond_60

    cmpl-float v7, v3, v10

    if-lez v7, :cond_60

    :cond_5e
    move v7, v5

    goto :goto_61

    :cond_60
    move v7, v6

    :goto_61
    if-nez v7, :cond_68

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_10f

    :cond_68
    const/16 v7, 0xff

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    cmpg-float v3, v3, v1

    if-gez v3, :cond_10f

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/theme/LauncherIconConfig;->getCurrentWholeIconScale(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v3

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/views/OplusClipIconView;->mUXScale:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    rem-int/lit8 v4, v3, 0x2

    if-ne v4, v5, :cond_93

    add-int/lit8 v3, v3, 0x1

    :cond_93
    if-eqz p13, :cond_98

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_9a

    :cond_98
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_9a
    div-int/lit8 v4, v4, 0x2

    int-to-float v5, v3

    int-to-float v4, v4

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v5, v7

    sub-float v7, v4, v5

    float-to-int v7, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v4, v2

    iget-boolean v2, v0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    if-eqz v2, :cond_bf

    move v2, v6

    goto :goto_c7

    :cond_bf
    iget-object v2, v0, Lcom/android/launcher3/views/OplusClipIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    :goto_c7
    iget-object v7, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    sub-int/2addr v8, v2

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundSize()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v7, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_fd

    iget-boolean v7, v0, Lcom/android/launcher3/views/OplusClipIconView;->mIsFolderIcon:Z

    if-eqz v7, :cond_e4

    goto :goto_fd

    :cond_e4
    neg-int v1, v2

    sub-int/2addr v3, v2

    invoke-virtual {v5, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_107

    :cond_fd
    :goto_fd
    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    move v2, v1

    :goto_107
    invoke-static {v5, v1, v2}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;FF)V

    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_10f
    :goto_10f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;",
            "Landroid/graphics/RectF;",
            "FFFIZ",
            "Landroid/view/View;",
            "Lcom/android/launcher3/DeviceProfile;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p8

    iget-boolean v1, v0, Lcom/android/launcher3/views/OplusClipIconView;->mIsCardDrawable:Z

    if-eqz v1, :cond_103

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/views/OplusFloatingIconView;->getPosition()Landroid/graphics/RectF;

    iget-boolean v1, v0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v1, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v11, p9

    iget v2, v11, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    goto :goto_40

    :cond_30
    move-object/from16 v11, p9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    :goto_40
    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v9, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_102

    invoke-static {v13}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_87

    goto/16 :goto_102

    :cond_87
    invoke-static {v13, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_90

    const/4 v3, 0x1

    goto :goto_91

    :cond_90
    move v3, v5

    :goto_91
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    if-eqz v3, :cond_b1

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    div-float/2addr v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v6, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c6

    :cond_b1
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    div-float/2addr v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_c6
    div-float/2addr v1, v13

    iput v1, v0, Lcom/android/launcher3/views/OplusClipIconView;->mCardRadiusScale:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v13

    move-object v10, v15

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v16, v13

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/launcher3/views/OplusClipIconView;->update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v14, v0}, Landroid/view/View;->setPivotX(F)V

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {v14, v0}, Landroid/view/View;->setPivotY(F)V

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->invalidate()V

    goto :goto_108

    :cond_102
    :goto_102
    return-void

    :cond_103
    move-object/from16 v11, p9

    invoke-super/range {p0 .. p11}, Lcom/android/launcher3/views/ClipIconView;->update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V

    :goto_108
    return-void
.end method

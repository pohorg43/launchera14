.class public Lcom/android/launcher3/folder/OplusPreviewBackground;
.super Lcom/android/launcher3/folder/PreviewBackground;
.source ""


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final DRAG_ENTER_ANIM_DURATION:J = 0x46L

.field private static final FLASH_ANIMATOR_DURATION:I = 0x12c

.field private static final FOLDER_BG_P100:F = 1.0f

.field private static final FOLDER_BG_P50:F = 0.5f

.field private static final FOLDER_BG_SCALER:F = 1.2f

.field public static final FOLDER_DRAWABLE_NAME:Ljava/lang/String; = "ic_launcher_folder.png"

.field private static final TAG:Ljava/lang/String; = "OplusPreviewBackground"


# instance fields
.field public mBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mContext:Landroid/content/Context;

.field private mFlashAnimator:Landroid/animation/ValueAnimator;

.field public mIsDefaultFolderIcon:Z

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field public mRadius:F

.field public mStyleBoundFactor:F

.field public mTargetCell:[I

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTmpRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTargetCell:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private getDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f080672

    goto :goto_21

    :cond_10
    const v0, 0x7f080673

    goto :goto_21

    :cond_14
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f080671

    goto :goto_21

    :cond_1e
    const v0, 0x7f080670

    :goto_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/OplusPreviewBackground$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/folder/OplusPreviewBackground$3;-><init>(Lcom/android/launcher3/folder/OplusPreviewBackground;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/folder/OplusPreviewBackground$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/folder/OplusPreviewBackground$4;-><init>(Lcom/android/launcher3/folder/OplusPreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getAnimateScaleDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_12:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTargetCell:[I

    const/4 p1, 0x0

    aput p2, p0, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    return-void
.end method

.method public animateToFlash(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/OplusPreviewBackground$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/OplusPreviewBackground$1;-><init>(Lcom/android/launcher3/folder/OplusPreviewBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/OplusPreviewBackground$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/OplusPreviewBackground$2;-><init>(Lcom/android/launcher3/folder/OplusPreviewBackground;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6b

    iget-boolean v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    if-eqz v1, :cond_16

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mRadius:F

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mRadius:F

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6b
    return-void
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getAnimateScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x46

    return-wide v0
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getOffsetY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getBgDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBgScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    return p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v3, v1

    float-to-int v1, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    add-int/2addr v3, v1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    add-int/2addr p0, v1

    int-to-float v1, p0

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v4, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p1, p0, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getOffsetX()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result v1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOffsetY()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result v1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScaleSize()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public invalidate()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const-string p0, "OplusPreviewBackground"

    const-string v0, "invalidate: is not main thread!!!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-super {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->updateBgColorFilter()V

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iput p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V
    .registers 11

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "ic_launcher_folder.png"

    invoke-static {v0, v3, v2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_35

    :cond_2f
    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4f

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/android/common/util/IconUtils;->getSmallFolderRadius(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mRadius:F

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->updateBgColorFilter()V

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iput v2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    instance-of v2, p3, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v3, 0x1

    if-eqz v2, :cond_bf

    move-object p2, p3

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p5, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderViewBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p2, :cond_80

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p5, -0x65

    if-ne p2, p5, :cond_80

    move v1, v3

    :cond_80
    move-object p2, p3

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->isLayoutHorizontal()Z

    move-result p2

    if-eqz p2, :cond_b6

    if-eqz v1, :cond_95

    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int p2, p4, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    goto/16 :goto_10e

    :cond_95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_af

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    goto :goto_10e

    :cond_af
    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    goto :goto_10e

    :cond_b6
    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int p2, p4, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    goto :goto_10e

    :cond_bf
    iget-boolean p3, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p3, :cond_f0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    if-eqz p3, :cond_d7

    iget p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int p3, p4, p3

    iget p5, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    sub-int/2addr p3, p5

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    goto :goto_d9

    :cond_d7
    iput p5, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    :goto_d9
    invoke-static {p2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetCell()[I

    move-result-object p3

    iget-object p5, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTargetCell:[I

    aget v2, p3, v1

    aput v2, p5, v1

    aget p3, p3, v3

    aput p3, p5, v3

    goto :goto_f8

    :cond_f0
    iget p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int p3, p4, p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    :goto_f8
    invoke-static {p2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetCell()[I

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTargetCell:[I

    aget p5, p2, v1

    aput p5, p3, v1

    aget p2, p2, v3

    aput p2, p3, v3

    :goto_10e
    iget p2, v0, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr p6, p2

    iput p6, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_159

    const-string p1, "OplusPreviewBackground-setUp: basePreviewOffsetX = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", basePreviewOffsetY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    const-string p3, ", availableSpaceX = "

    const-string p5, ", previewSize = "

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", caller = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusPreviewBackground"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_159
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "basePreviewOffsetX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", basePreviewOffsetY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBgColorFilter()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080672

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    :cond_22
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080673

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    :cond_30
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080671

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    :cond_44
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080670

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_51
    :goto_51
    return-void
.end method

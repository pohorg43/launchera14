.class public Lcom/android/launcher3/OplusBubbleTextViewSubscribe;
.super Lcom/android/launcher3/OplusBubbleTextView;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FAST_CLICK_THRESHOLD:J = 0x1c2L

.field private static final ICON_FEED_BACK_ANIM:Ljava/lang/String; = "LauncherIconFeedBackAnim"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_SCALE:F = 0.0f

.field private static final PRESS_ANIMATION_DURATION:J = 0xc8L

.field private static final PRESS_ANIMATION_SCALE_MAX:F = 1.0f

.field private static final PRESS_ANIMATION_SCALE_MIN:F = 0.85f

.field private static final PRESS_ANIMATION_SHADOW_MAX:F = 100.0f

.field private static final PRESS_ANIMATION_SHADOW_WEIGHT:F = 8.0f

.field private static final PRESS_ANIMATION_THRESHOLD:F = 0.4f

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "OplusBubbleTextViewSubscribe"


# instance fields
.field private isDownAnimRunning:Z

.field private isUpAnimRunning:Z

.field private volatile mChecked:Z

.field private mFastClickTimestamp:J

.field private mFilterScope:[F

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mOnCheckedChangeListener:Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;

.field private mPressAnimationCurrentShadowValue:I

.field private mPressAnimationCurrentValue:F

.field private mPressAnimationRecoder:Landroid/animation/ValueAnimator;

.field private mShouldApplyCheckState:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFilterScope:[F

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isDownAnimRunning:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isUpAnimRunning:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFastClickTimestamp:J

    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_1e

    iput-object p2, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFilterScope:[F

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isDownAnimRunning:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isUpAnimRunning:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFastClickTimestamp:J

    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_1e

    iput-object p2, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFilterScope:[F

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isDownAnimRunning:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isUpAnimRunning:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFastClickTimestamp:J

    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public static synthetic access$002(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isDownAnimRunning:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationUp()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isUpAnimRunning:Z

    return p1
.end method

.method private final cancelAnimation(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_4d

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    const-string/jumbo p1, "press anim should delay or not ? "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    const-string v1, "OplusBubbleTextViewSubscribe"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    :cond_4d
    return-void
.end method

.method private createShadowColorFilter(Ljava/lang/Boolean;Ljava/lang/Float;[F)Landroid/graphics/ColorFilter;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aget p1, p3, p1

    aget p2, p3, v0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_21

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aget p2, p3, v0

    aget p1, p3, p1

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    :goto_21
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 p2, 0x437f0000  # 255.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public static synthetic e(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->lambda$pressAnimationDown$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->lambda$setUnCheckedStateIfNecessary$2()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->lambda$setCheckedStateIfNecessary$3()V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->lambda$pressAnimationUp$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private isEventInValidTouchArea(Landroid/view/MotionEvent;)Z
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_44

    goto :goto_90

    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_6b

    iget p0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_81

    :cond_6b
    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_81

    :cond_71
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p0

    add-int/2addr p0, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_90
    :goto_90
    const/4 p0, 0x0

    return p0
.end method

.method private isTaskbarWindowAnimating()Z
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ALL_APPS_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ALL_APPS_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileWindowLoading()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method private synthetic lambda$pressAnimationDown$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_53

    const-string/jumbo v0, "pressAnimationDown mShouldApplyCheckState is :"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    const-string v2, "OplusBubbleTextViewSubscribe"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    const/high16 v1, 0x42c80000  # 100.0f

    const/high16 v2, 0x41000000  # 8.0f

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    shl-int/lit8 v1, v1, 0x18

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_53

    :cond_4d
    const-string/jumbo v0, "pressAnimationDown no action when mShouldApplyCheckState is true"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    move v0, v1

    :goto_69
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz p1, :cond_87

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-float p1, v3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v0, v3

    mul-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_87

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationUp()V

    :cond_87
    return-void
.end method

.method private synthetic lambda$pressAnimationUp$1(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_68

    const-string/jumbo p1, "pressAnimationUp mShouldApplyCheckState is :"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    const-string v1, "OplusBubbleTextViewSubscribe"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    if-eqz p1, :cond_62

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    shl-int/lit8 v0, v0, 0x18

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update pressedColorFilter-- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    const/high16 v1, 0x42c80000  # 100.0f

    const/high16 v2, 0x41000000  # 8.0f

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentShadowValue:I

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_68

    :cond_62
    const-string/jumbo p0, "pressAnimationUp no action when mShouldApplyCheckState is false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method

.method private synthetic lambda$setCheckedStateIfNecessary$3()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const-string v0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo v1, "setCheckedState successfully"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, 0x78000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    return-void
.end method

.method private synthetic lambda$setUnCheckedStateIfNecessary$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const-string v0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo v1, "setUnCheckedState successfully"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->resetPressAnimatorStateForTouch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    return-void
.end method

.method private pressAnimationDown()V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    const-string v1, "OplusBubbleTextViewSubscribe"

    if-eqz v0, :cond_14

    const-string p0, "The device turns on the high temperature protection to stop the animation of clicking the icon down."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "LauncherIconFeedBackAnim"

    invoke-virtual {v0, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const-string/jumbo v2, "mShouldApplyCheckState statue is : "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    invoke-static {v2, v3, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_72

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/core/view/h;

    invoke-direct {v2, p0, v0}, Landroidx/core/view/h;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_72
    .array-data 4
        0x3f800000  # 1.0f
        0x3f59999a  # 0.85f
    .end array-data
.end method

.method private pressAnimationUp()V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    const-string v1, "OplusBubbleTextViewSubscribe"

    if-eqz v0, :cond_14

    const-string p0, "The device turns on the high temperature protection to stop the animation of clicking the icon up."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_69

    const-string/jumbo v0, "no need delay , do action-up anim directly"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LauncherIconFeedBackAnim"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_31
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    aput v3, v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/s;

    invoke-direct {v1, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_70

    :cond_69
    const-string p0, "TAG"

    const-string v0, "do nothing in action up because we need ensure 40% anim duration"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    return-void
.end method


# virtual methods
.method public getPressAnimationCurrentValue()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationCurrentValue:F

    return p0
.end method

.method public getTargetStateWhenPressAnimRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mShouldApplyCheckState:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    return p0
.end method

.method public isFastClick()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFastClickTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1c2

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mFastClickTimestamp:J

    const/4 p0, 0x0

    return p0

    :cond_19
    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string v0, "Click too fast, ignore..."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isPressAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-nez v2, :cond_24

    return v1

    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-string v4, "do not reapply event when fingers more than one"

    const-string v5, "OplusBubbleTextViewSubscribe"

    const/4 v6, 0x1

    if-eqz v3, :cond_c0

    const/4 v7, 0x0

    if-eq v3, v6, :cond_8c

    const/4 v2, 0x2

    if-eq v3, v2, :cond_76

    const/4 v2, 0x3

    if-eq v3, v2, :cond_42

    goto/16 :goto_f4

    :cond_42
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_5f

    :cond_5b
    move-object v0, v7

    goto :goto_5f

    :cond_5d
    move-object v0, v7

    move-object v2, v0

    :goto_5f
    if-eqz v2, :cond_63

    if-eq v0, p0, :cond_f4

    :cond_63
    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    :cond_6f
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->resetPressAnimatorStateForTouch()V

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    goto/16 :goto_f4

    :cond_76
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isEventInValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f4

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    :cond_88
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setUnCheckedStateIfNecessary()V

    goto :goto_f4

    :cond_8c
    if-lez v2, :cond_92

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_92
    invoke-direct {p0, v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->cancelAnimation(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationUp()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v6, :cond_b0

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isEventInValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-nez v0, :cond_b0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAccessibilityDynamicEffectDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f4

    :cond_b0
    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    :cond_bc
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->resetPressAnimatorStateForTouch()V

    goto :goto_f4

    :cond_c0
    if-lez v2, :cond_c6

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_c6
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isEventInValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!isEventInValidTouchArea, event:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_f9

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isTaskbarWindowAnimating()Z

    move-result v0

    if-eqz v0, :cond_ee

    goto :goto_f9

    :cond_ee
    invoke-direct {p0, v6}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->cancelAnimation(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationDown()V

    :cond_f4
    :goto_f4
    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_f9
    :goto_f9
    const-string p0, "isFastClick or isTaskbarWindowAnimating"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_19
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method

.method public resetPressAnimatorStateForTouch()V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public resetPressAnimatorWhenCancelUp(Z)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_21
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 5

    const-string v0, "begin setChecked to : "

    const-string v1, "OplusBubbleTextViewSubscribe"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    if-eq v0, p1, :cond_42

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChecked successfully to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileWindowLoading()Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "isFileWindowLoading!!!!"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mOnCheckedChangeListener:Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;

    if-eqz p1, :cond_42

    const-string/jumbo p1, "onCheckedChanged"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mOnCheckedChangeListener:Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/launcher3/BubbleTextView;Z)V

    :cond_42
    return-void
.end method

.method public setCheckedStateIfNecessary()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "OplusBubbleTextViewSubscribe"

    const-string v1, " begin setCheckedStateIfNecessary"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_27

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/r0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    :cond_27
    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_36
    const-string/jumbo v1, "setCheckedState successfully"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, 0x78000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    :goto_56
    return-void
.end method

.method public setCheckedWhenFastCheck(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    :cond_6
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mOnCheckedChangeListener:Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;

    return-void
.end method

.method public setUnCheckedStateIfNecessary()V
    .registers 4

    const-string v0, "OplusBubbleTextViewSubscribe"

    const-string v1, "begin setUnCheckedStateIfNecessary "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_20

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/t1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mPressAnimationRecoder:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2f
    const-string/jumbo v1, "setUnCheckedState successfully"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->resetPressAnimatorStateForTouch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    :goto_3b
    return-void
.end method

.method public shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    invoke-virtual {v0, p1}, Lcom/android/common/util/WidgetUtils;->isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    :cond_21
    return p0

    :cond_22
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    move p0, v1

    :cond_28
    return p0
.end method

.method public toggle()V
    .registers 3

    const-string v0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo v1, "trigger toggle"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setChecked(Z)V

    goto :goto_21

    :cond_1c
    const-string p0, "The method that the device starts the high temperature protection mode and cannot respond to the trigger switch"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public toggleWhenFastCheck()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setCheckedWhenFastCheck(Z)V

    return-void
.end method

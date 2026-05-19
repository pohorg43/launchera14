.class public Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;


# static fields
.field private static final FANCY_ICON_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/iconctrl/IAppsFancyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOAT_0:F = 0.0f

.field private static final FLOAT_1:F = 1.0f

.field public static final ICON_POINTER_ANIM_DURATION_IN:J = 0x12cL

.field public static final ICON_POINTER_ANIM_DURATION_OUT:J = 0x96L

.field public static final ICON_POINTER_ANIM_DURATION_OUT_FAST:J = 0x64L

.field public static ICON_POINTER_ANIM_OFFSET:I = 0x0

.field public static final ICON_SCALE:F = 1.2f

.field public static final ICON_SCALE_IN_DOCKER:F = 1.05f

.field public static final ICON_SIZE_MAX:I = 0x98

.field public static final LEFT_LOCATION_BOTTOM:I = 0x3

.field public static final LEFT_LOCATION_LEFT:I = 0x0

.field public static final LEFT_LOCATION_RIGHT:I = 0x1

.field public static final LEFT_LOCATION_TOP:I = 0x2

.field public static final PLACE_HOTSPOT:I = 0x2

.field public static final PLACE_PADDING:I = 0x0

.field public static final PLACE_VIEW:I = 0x1

.field public static final RADIAL_RADIUS:F = 100.0f

.field public static final SHIMMER_EDGE_COLOR:I = 0xffffff

.field public static final SHIMMER_MIDDLE_COLOR:I = -0x4c000001

.field private static final TAG:Ljava/lang/String; = "IconSpiritAnimatorImpl"


# instance fields
.field private mBackGroundShadowEnable:Z

.field private mCanDrawShadow:Z

.field private mCurrentCenterX:F

.field private mCurrentIconBounds:Landroid/graphics/RectF;

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentY:F

.field private mDrawableStrokeAlpha:I

.field private mDrawableStrokeColor:I

.field private mEventX:F

.field private mEventY:F

.field private mIconHotSpotArea:Landroid/graphics/RectF;

.field private mIconOriginRadius:F

.field private mIconPointerAnimator:Landroid/animation/AnimatorSet;

.field private mIconRadius:F

.field private mIconRealBounds:Landroid/graphics/RectF;

.field private mIconScale:F

.field private mIconTheme:I

.field private volatile mIsEnterAnim:Z

.field private mIsSlow:Z

.field private mLeftLocation:I

.field private mLeftX:F

.field private mLeftY:F

.field private mPointerColorBegin:I

.field private mPointerColorEnd:I

.field private mPointerColorEndForFastMove:I

.field private mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPointerHeight:F

.field private mPointerRadius:I

.field private mPointerStrokeWidth:I

.field private mPointerWidth:F

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mRadialPaint:Landroid/graphics/Paint;

.field private mRadialPaintAlpha:F

.field private mShadowAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

.field private mSimpleExitAnim:Z

.field private mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mStartRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mVelocityX:F

.field private mVelocityY:F

.field private mView:Lcom/android/launcher3/BubbleTextView;

.field private mVisualizeGridPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$1;

    const-string/jumbo v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->FANCY_ICON_SCALE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaintAlpha:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconTheme:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mTargetRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mStartRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsEnterAnim:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconHotSpotArea:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentIconBounds:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mBackGroundShadowEnable:Z

    const v1, 0x3f99999a  # 1.2f

    iput v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_73

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of v1, v1, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    if-eqz v1, :cond_71

    goto :goto_73

    :cond_71
    move v1, v0

    goto :goto_74

    :cond_73
    :goto_73
    move v1, v2

    :goto_74
    if-nez v1, :cond_19e

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->initPaint()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070963

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070961

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/theme/LauncherIconConfig;->getScaleForEditedIcon()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconOriginRadius:F

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRadius:F

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08090d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060784

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070962

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerWidth:F

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerHeight:F

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070965

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerStrokeWidth:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070964

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerRadius:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060781

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorBegin:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060782

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEnd:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060783

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEndForFastMove:I

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconTheme:I

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerWidth:F

    float-to-int v3, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_17a

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconHotSpotArea:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->initHotSpotArea(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget p1, p1, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    const/16 v0, 0x98

    if-le p1, v0, :cond_17a

    iput-boolean v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    :cond_17a
    new-instance p1, Landroid/graphics/RadialGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000  # 100.0f

    const v7, -0x4c000001

    const v8, 0xffffff

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialGradient:Landroid/graphics/RadialGradient;

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaintAlpha:F

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_19e
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->lambda$resetAllFlagImmediately$0(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mX:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mY:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerWidth:F

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mStartRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentCenterX:F

    return p0
.end method

.method public static synthetic access$1702(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentCenterX:F

    return p1
.end method

.method public static synthetic access$1800(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentY:F

    return p0
.end method

.method public static synthetic access$1802(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentY:F

    return p1
.end method

.method public static synthetic access$1900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->applySimpleAnimWhenExit()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->updateStroke(ZF)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->updateRadius(ZF)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->updateRadialAlpha(ZF)V

    return-void
.end method

.method private applySimpleAnimWhenExit()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-eq v0, v2, :cond_21

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p0, v0, :cond_20

    goto :goto_21

    :cond_20
    return v1

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method

.method private createIconPointerAnimation(Z)Landroid/animation/AnimatorSet;
    .registers 18

    move-object/from16 v6, p0

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    const-string/jumbo v1, "unknown icon type!!"

    const-string v9, "IconSpiritAnimatorImpl"

    const-string v10, "Icon"

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p1, :cond_7c

    instance-of v2, v8, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v2, :cond_42

    move-object v0, v8

    check-cast v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    sget-object v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->FANCY_ICON_SCALE:Landroid/util/FloatProperty;

    new-array v2, v12, [F

    iget v3, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    aput v3, v2, v13

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_40
    move-object v14, v0

    goto :goto_5a

    :cond_42
    instance-of v2, v8, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_56

    move-object v0, v8

    check-cast v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    sget-object v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v2, v12, [F

    iget v3, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    aput v3, v2, v13

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_40

    :cond_56
    invoke-static {v10, v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :goto_5a
    new-array v0, v11, [F

    fill-array-data v0, :array_1b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;

    invoke-direct {v0, v6}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    iget-object v2, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorBegin:I

    iget v5, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEnd:I

    const-string v3, "color"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getAnimator(ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_134

    :cond_7c
    instance-of v2, v8, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_91

    move-object v0, v8

    check-cast v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    sget-object v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->FANCY_ICON_SCALE:Landroid/util/FloatProperty;

    new-array v2, v12, [F

    aput v3, v2, v13

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_8f
    move-object v14, v0

    goto :goto_a7

    :cond_91
    instance-of v2, v8, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_a3

    move-object v0, v8

    check-cast v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    sget-object v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v2, v12, [F

    aput v3, v2, v13

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_8f

    :cond_a3
    invoke-static {v10, v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :goto_a7
    const-string v0, "mIsSlow is "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSimpleExitAnim is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLeftLocation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "applySimpleAnimWhenExit is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->applySimpleAnimWhenExit()Z

    move-result v1

    invoke-static {v0, v1, v10, v9}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    if-eqz v0, :cond_107

    iget-boolean v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    if-nez v0, :cond_107

    iget v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    if-eq v0, v11, :cond_107

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->applySimpleAnimWhenExit()Z

    move-result v0

    if-nez v0, :cond_107

    new-array v0, v11, [F

    fill-array-data v0, :array_1b8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$4;

    invoke-direct {v0, v6}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$4;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorBegin:I

    iget v5, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEnd:I

    const-string v3, "color"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getAnimator(ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_134

    :cond_107
    iget-object v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerStrokeWidth:I

    iget v2, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-static {v2, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-array v0, v11, [F

    fill-array-data v0, :array_1c0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$5;

    invoke-direct {v0, v6}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$5;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEndForFastMove:I

    iget v5, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerColorEnd:I

    const-string v3, "color"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getAnimator(ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_134
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    if-eqz p1, :cond_147

    invoke-virtual {v6, v12}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getShadowRectAnim(Z)Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object v1

    new-array v2, v12, [Landroid/animation/Animator;

    aput-object v1, v2, v13

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_16b

    :cond_147
    iget-boolean v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    if-eqz v1, :cond_165

    iget-boolean v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    if-nez v1, :cond_165

    iget v1, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    if-eq v1, v11, :cond_165

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->applySimpleAnimWhenExit()Z

    move-result v1

    if-nez v1, :cond_165

    invoke-virtual {v6, v13}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getShadowRectAnim(Z)Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object v1

    new-array v2, v12, [Landroid/animation/Animator;

    aput-object v1, v2, v13

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_16b

    :cond_165
    const-string/jumbo v1, "no Rect translation anim!!"

    invoke-static {v10, v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_16b
    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v15, v1, v13

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v0, v1, v13

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$6;

    invoke-direct {v0, v6, v8}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$6;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p1, :cond_18c

    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_1aa

    :cond_18c
    iget-boolean v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    if-eqz v0, :cond_1a5

    iget-boolean v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSimpleExitAnim:Z

    if-nez v0, :cond_1a5

    iget v0, v6, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    if-eq v0, v11, :cond_1a5

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->applySimpleAnimWhenExit()Z

    move-result v0

    if-eqz v0, :cond_19f

    goto :goto_1a5

    :cond_19f
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_1aa

    :cond_1a5
    :goto_1a5
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_1aa
    sget-object v0, Lcom/android/common/config/AnimationConstant;->CREATE_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v7

    :array_1b0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1b8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1c0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getAnimator(ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;
    .registers 8

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_10

    new-array p1, v1, [I

    aput p4, p1, v0

    aput p5, p1, p0

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_1a

    :cond_10
    new-array p1, v1, [I

    aput p5, p1, v0

    aput p4, p1, p0

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method private initHotSpotArea(Landroid/graphics/RectF;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initPaint()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const v1, 0x7f0705ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const v2, 0x7f0600ae

    invoke-virtual {p0, v0, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private isIconInDocker()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_10

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_1a

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne p0, v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private synthetic lambda$resetAllFlagImmediately$0(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->resetAllFlagImmediatelyImp(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateRadialAlpha(ZF)V
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    invoke-static {p2, v2, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaintAlpha:F

    return-void
.end method

.method private updateRadius(ZF)V
    .registers 9

    if-eqz p1, :cond_19

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    iget p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerRadius:I

    int-to-float v3, p1

    iget v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRadius:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_2f

    :cond_19
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRadius:F

    iget p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerRadius:I

    int-to-float v4, p1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_2f
    return-void
.end method

.method private updateStroke(ZF)V
    .registers 14

    if-eqz p1, :cond_2b

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    iget p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    int-to-float v3, p1

    const/4 v4, 0x0

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p2

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    float-to-int p1, p1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerStrokeWidth:I

    int-to-float v8, v0

    const/4 v9, 0x0

    move v5, p2

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_7b

    :cond_2b
    float-to-double v0, p2

    const-wide v2, 0x3feb333333333333L  # 0.85

    cmpg-double p1, v0, v2

    if-gez p1, :cond_53

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    iget p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    int-to-float v4, p1

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p2

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    float-to-int p1, p1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerStrokeWidth:I

    int-to-float v9, v0

    move v5, p2

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    float-to-int p2, p2

    goto :goto_70

    :cond_53
    const-string p1, "Threshold max color : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "alpha "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    const-string v0, "Icon"

    const-string v1, "IconSpiritAnimatorImpl"

    invoke-static {p1, p2, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeAlpha:I

    iget p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerStrokeWidth:I

    :goto_70
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mDrawableStrokeColor:I

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_7b
    return-void
.end method


# virtual methods
.method public canDrawShadow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    return p0
.end method

.method public cancelPointerAnim()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method public enableBackGroundShadow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mBackGroundShadowEnable:Z

    return p0
.end method

.method public enableHardwareLayer(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public getBGPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVisualizeGridPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getCurrentIconArea()Landroid/graphics/RectF;
    .registers 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v2, :cond_1b

    check-cast v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->getScaleX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_38

    :cond_1b
    instance-of v1, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_38

    :cond_2f
    const-string v1, "Icon"

    const-string v2, "IconSpiritAnimatorImpl"

    const-string v3, "getCurrentIconArea -- unknown icon type!!"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mX:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mY:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentIconBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCurrentTranslationX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mX:F

    return p0
.end method

.method public getCurrentTranslationY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mY:F

    return p0
.end method

.method public getEventX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    return p0
.end method

.method public getEventY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    return p0
.end method

.method public getIconRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRadius:F

    return p0
.end method

.method public getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public getShadowRectAnim(Z)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 10

    const/high16 v0, 0x40000000  # 2.0f

    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mStartRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    iget v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerWidth:F

    div-float v4, v3, v0

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    div-float v6, v3, v0

    sub-float v6, v5, v6

    div-float v7, v3, v0

    add-float/2addr v7, v2

    div-float/2addr v3, v0

    add-float/2addr v3, v5

    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_47

    :cond_26
    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mTargetRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    iget v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mPointerWidth:F

    div-float v4, v3, v0

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    div-float v6, v3, v0

    sub-float v6, v5, v6

    div-float v7, v3, v0

    add-float/2addr v7, v2

    div-float/2addr v3, v0

    add-float/2addr v3, v5

    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_47
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    invoke-static {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;->ofFloat([F)Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mShadowAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    new-instance v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mShadowAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    return-object p0

    :array_5e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public initSpiritAnimParams()V
    .registers 6

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$7;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v2, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v3, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v4, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public isEnterAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsEnterAnim:Z

    return p0
.end method

.method public isPointerAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isShadowAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mShadowAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

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

.method public isSimpleExitAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSpiritAnimEnable()Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    instance-of v0, v0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    if-eqz v0, :cond_d

    return v2

    :cond_d
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableIconHoverAnim()Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v1

    const-string v3, "IconSpiritAnimatorImpl"

    if-eqz v1, :cond_be

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_3d

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_3c

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_3c
    return v2

    :cond_3d
    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v1

    if-eq v1, v4, :cond_5c

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_5c

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v0

    if-ne v0, v5, :cond_5a

    goto :goto_5c

    :cond_5a
    move v0, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v0, v5

    :goto_5d
    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconTheme:I

    if-ne v0, v4, :cond_6b

    move v0, v5

    goto :goto_6c

    :cond_6b
    move v0, v2

    :goto_6c
    if-nez v0, :cond_75

    const-string/jumbo p0, "spiritAnimEnable pre condition not match."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_75
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_bc

    const/16 v1, 0xca

    if-eq v0, v1, :cond_bc

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_bc

    const/16 v1, 0xce

    if-ne v0, v1, :cond_98

    goto :goto_bc

    :cond_98
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_bb

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v0, v5, :cond_bb

    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    if-eqz p0, :cond_bb

    move v2, v5

    :cond_bb
    return v2

    :cond_bc
    :goto_bc
    return v5

    :cond_bd
    return v2

    :cond_be
    const-string p0, "Icon"

    const-string v0, "Popu memu has shown, do nothing"

    invoke-static {p0, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public playSpiritAnimation(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of v0, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-boolean p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsSlow:Z

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIsEnterAnim:Z

    iget-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1e
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->createIconPointerAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2a

    return-void

    :cond_2a
    if-eqz p1, :cond_2f

    const-string v0, "enter anim"

    goto :goto_31

    :cond_2f
    const-string v0, "exit anim"

    :goto_31
    new-instance v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconPointerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public prepareForShadowAnim(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    return-void
.end method

.method public recoveryIconWhenEnterToggleBar()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of v0, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_6d

    const-string v0, "Icon"

    const-string v1, "IconSpiritAnimatorImpl"

    const-string/jumbo v2, "recoveryIconWhenEnterToggleBar"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_49

    move-object v0, v3

    check-cast v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v0, v2, v2}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setTranslate(II)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setScale(FFFF)V

    goto :goto_5f

    :cond_49
    instance-of v4, v3, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v4, :cond_59

    check-cast v3, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v3, v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateTranslationY(I)V

    invoke-virtual {v3, v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateTranslationX(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->resetScale()V

    goto :goto_5f

    :cond_59
    const-string/jumbo v2, "recoveryIconWhenEnterToggleBar -- unknown icon type!!"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->updateRecoveryStatus()V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->resetPointer()V

    :cond_6d
    return-void
.end method

.method public resetAllFlagImmediately(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    instance-of v0, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->isSpiritAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Icon"

    const-string v2, "IconSpiritAnimatorImpl"

    const-string/jumbo v3, "resetAllFlagImmediately"

    invoke-static {v1, v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_4d

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/z0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    :cond_4d
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->resetAllFlagImmediatelyImp(Landroid/graphics/drawable/Drawable;Z)V

    :cond_50
    :goto_50
    return-void
.end method

.method public resetAllFlagImmediatelyImp(Landroid/graphics/drawable/Drawable;Z)V
    .registers 6

    instance-of v0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v0, v1, v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setTranslate(II)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-interface {v0, v2, v2, v1, p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setScale(FFFF)V

    goto :goto_3b

    :cond_21
    instance-of v0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p1, v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateTranslationY(I)V

    invoke-virtual {p1, v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateTranslationX(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->resetScale()V

    goto :goto_3b

    :cond_31
    const-string p1, "Icon"

    const-string v0, "IconSpiritAnimatorImpl"

    const-string/jumbo v1, "resetAllFlagImmediately -- unknown icon type!!"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    if-eqz p2, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->updateRecoveryStatus()V

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p2, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_59
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_68
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->resetPointer()V

    return-void
.end method

.method public setDrawShadowFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mCanDrawShadow:Z

    return-void
.end method

.method public setLeftLocation(Landroid/view/MotionEvent;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftY:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftX:F

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gtz v1, :cond_46

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    goto :goto_5f

    :cond_46
    int-to-float v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4e

    iput v6, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    goto :goto_5f

    :cond_4e
    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftY:F

    int-to-float v1, v4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_58

    iput v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    goto :goto_5f

    :cond_58
    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_5f

    iput v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    :cond_5f
    :goto_5f
    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mLeftLocation:I

    if-eqz p0, :cond_78

    if-eq p0, v6, :cond_74

    if-eq p0, v5, :cond_70

    if-eq p0, v2, :cond_6c

    const-string p0, ""

    goto :goto_7b

    :cond_6c
    const-string/jumbo p0, "从下边逃逸"

    goto :goto_7b

    :cond_70
    const-string/jumbo p0, "从上边逃逸"

    goto :goto_7b

    :cond_74
    const-string/jumbo p0, "从右边逃逸"

    goto :goto_7b

    :cond_78
    const-string/jumbo p0, "从左边逃逸"

    :goto_7b
    const-string p1, "escape from : "

    const-string v0, "Icon"

    const-string v1, "IconSpiritAnimatorImpl"

    invoke-static {p1, p0, v0, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationTo(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public updateIconBounds()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->isSpiritAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->isIconInDocker()Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x3f866666  # 1.05f

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    goto :goto_2a

    :cond_25
    const v0, 0x3f99999a  # 1.2f

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    :goto_2a
    iget v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconOriginRadius:F

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRadius:F

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconHotSpotArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->initHotSpotArea(Landroid/graphics/RectF;)V

    :cond_36
    return-void
.end method

.method public updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    iget v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialGradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaintAlpha:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mRadialPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public updateTargetRect(Landroid/graphics/RectF;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateVelocity(FF)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVelocityX:F

    iput p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mVelocityY:F

    return-void
.end method

.method public upgradeTranslation(Landroid/view/MotionEvent;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mEventY:F

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    const v0, 0x3e4ccccd  # 0.2f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v4, v1

    sub-float v6, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconRealBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v5

    add-float/2addr v3, v2

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpl-float v4, v6, v3

    if-ltz v4, :cond_4b

    const/4 v7, 0x0

    sget v4, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    int-to-float v8, v4

    add-float/2addr v8, v1

    div-float v1, v0, v5

    add-float/2addr v8, v1

    const/4 v9, 0x0

    int-to-float v10, v4

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    goto :goto_60

    :cond_4b
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    sget v4, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    int-to-float v8, v4

    add-float/2addr v8, v1

    div-float v1, v0, v5

    add-float/2addr v8, v1

    const/4 v9, 0x0

    int-to-float v10, v4

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    neg-float v1, v1

    :goto_60
    cmpl-float v3, p1, v3

    if-ltz v3, :cond_76

    const/4 v8, 0x0

    sget v3, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    div-float/2addr v0, v5

    add-float v9, v0, v4

    const/4 v10, 0x0

    int-to-float v11, v3

    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v7, p1

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    goto :goto_8c

    :cond_76
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v3, 0x0

    sget v4, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    int-to-float v6, v4

    add-float/2addr v6, v2

    div-float/2addr v0, v5

    add-float/2addr v0, v6

    const/4 v5, 0x0

    int-to-float v6, v4

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v2, p1

    move v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    neg-float p1, p1

    :goto_8c
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->mIconScale:F

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->ICON_POINTER_ANIM_OFFSET:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    const/4 p1, 0x2

    const/4 p2, 0x1

    if-eqz p0, :cond_3e

    move p0, p1

    goto :goto_3f

    :cond_3e
    move p0, p2

    :goto_3f
    if-eq p0, p2, :cond_49

    if-eq p0, p1, :cond_46

    const-string p1, "PADDING"

    goto :goto_4c

    :cond_46
    const-string p1, "hotspot Area"

    goto :goto_4c

    :cond_49
    const-string/jumbo p1, "view Area"

    :goto_4c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current place is : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Icon"

    const-string v0, "IconSpiritAnimatorImpl"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

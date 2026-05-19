.class public Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_WEATHER_WIDGET_TEXT_SIZE:I = -0x1

.field private static final DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOAT_0DOT8:F = 0.8f

.field private static final FLOAT_0DOT9:F = 0.9f

.field private static final FLOAT_0DOT95:F = 0.95f

.field private static final LANDSCAPE_SCALE_RATIO:F = 0.55f

.field private static final MULTIWINDOW_LANDSCAPE_SCALE_RATIO_SMALL_SCREEN:F = 0.55f

.field public static final MULTIWINDOW_LAND_PORT_INCREASE_RATIO_LARGE_SCREEN:F = 1.5f

.field private static final MULTIWINDOW_PORTRAIT_SCALE_RATIO_SMALL_SCREEN:F = 0.9f

.field private static final NEED_ALIGN_AS_CARD:Z = true

.field public static final ORIGINAL_WIDGET_SCALE_RATIO:F = 1.0f

.field private static final RECURSION_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomLauncherAppWidgetHostView"

.field private static final UPDATE_WIDGET_DELAY_TIME:J = 0x5dcL

.field private static final WEATHER_WIDGET_SIZE_CHANGED_SCALE_RATIO:F = 0.86f


# instance fields
.field private mAsyncTraceCallback:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrightColorForText:I

.field private mClickOptsForRecentReverse:Ljava/lang/Runnable;

.field private mClipPaint:Landroid/graphics/Paint;

.field private mDeleteIconRect:Landroid/graphics/Rect;

.field private mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mForceScaleWidget:Z

.field private mForceUpdateRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHasScaledWidgetView:Z

.field private mHasScrollView:Z

.field private mHasUpdateRemoteView:Z

.field private mIsFirstAddToScreen:Z

.field private mIsOplusWeatherWidget:Z

.field private mIsSearchBoxWidgetView:Z

.field private mLastPaddingRect:Landroid/graphics/Rect;

.field private mLayoutID:I

.field private mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

.field private mNeedBackToggleBarLastState:Z

.field private mOriginalWeatherTextSize:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingSwitchStateAnim:Z

.field private mPressDeleteIcon:Z

.field private mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field private mRectF:Landroid/graphics/RectF;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

.field private mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

.field private final mWidgetBoundsPaddingOffset:I

.field private mWidgetCornerRadius:F

.field private final mWidgetNeedResizeOffset:I

.field private mWidgetScaleRatio:F

.field private mWidgetScaleRatioByInfoMinHeight:F

.field private mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$1;

    const-string v1, "deleteIconFraction"

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatioByInfoMinHeight:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLastPaddingRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    new-instance v0, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceUpdateRunnable:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScrollView:Z

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLayoutID:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClipPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060761

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBrightColorForText:I

    new-instance p1, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/LongClickEffectHandler;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07111e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetNeedResizeOffset:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetBoundsPaddingOffset:I

    new-instance p1, Lcom/android/launcher3/widget/AppWidgetTouchListener;

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/widget/AppWidgetTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;-><init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mAsyncTraceCallback:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClipPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->notifyAnimationStart()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->notifyAnimationEnd()V

    return-void
.end method

.method private adjustSpecificSceneForScaleRatio()F
    .registers 7

    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const v2, 0x3f666666  # 0.9f

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_22

    const v2, 0x3f2aaaab

    goto :goto_7d

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_7d

    const v2, 0x3f0ccccd  # 0.55f

    goto :goto_7d

    :cond_30
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    const v4, 0x3f4ccccd  # 0.8f

    const/4 v5, 0x5

    if-eqz v3, :cond_5e

    const/4 v3, 0x1

    aget v3, v1, v3

    if-ne v3, v5, :cond_5e

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_54

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7d

    :cond_54
    const v0, 0x3f733333  # 0.95f

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7d

    :cond_5e
    const/4 v3, 0x0

    aget v1, v1, v3

    if-ne v1, v5, :cond_77

    if-eqz v0, :cond_70

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_70

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7d

    :cond_70
    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7d

    :cond_77
    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_7d
    :goto_7d
    return v2
.end method

.method private changePaddingIfNecessary()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_1e

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_31

    iget v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v0, v3

    if-ne v2, v3, :cond_31

    iget v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_31

    return-void

    :cond_31
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const v1, 0x7f07001a

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_76

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_6a

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    if-eq v1, v0, :cond_a7

    :cond_6a
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    goto :goto_a7

    :cond_76
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_a7

    :cond_82
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_9c

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    if-eq v1, v0, :cond_a7

    :cond_9c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method private checkIfOplusWeatherWidgetNeedScale(Landroid/view/ViewGroup;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "CustomLauncherAppWidgetHostView"

    const-string v2, "Widget"

    if-eqz p1, :cond_54

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_19

    goto :goto_54

    :cond_19
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, -0x1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_2c

    :cond_2b
    move p1, v3

    :goto_2c
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    instance-of v4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_39

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    goto :goto_3a

    :cond_39
    move p0, v3

    :goto_3a
    if-ge p1, p0, :cond_41

    if-ne p1, v3, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x1

    return p0

    :cond_41
    :goto_41
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_53

    const-string/jumbo v3, "showingSpanY more than the originalSpanY or showingSpanY is -1, no need scale.  showingSpanY:"

    const-string v4, " originalSpanY:"

    invoke-static {v3, p1, v4, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return v0

    :cond_54
    :goto_54
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_60

    const-string/jumbo p0, "not real weather widget remote view, no need scale."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return v0
.end method

.method private checkIfOtherWidgetNeedScale(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, v2

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatioByInfoMinHeight:F

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->adjustSpecificSceneForScaleRatio()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_63

    iget p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_63

    iget p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatioByInfoMinHeight:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_63

    const p1, 0x3f666666  # 0.9f

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    :cond_63
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_8a

    const-string p1, "checkIfOtherWidgetNeedScale,adjustSpecificSceneForScaleRatio,mWidgetScaleRatio"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWidgetScaleRatioByInfoMinHeight"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatioByInfoMinHeight:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Widget"

    const-string v2, "CustomLauncherAppWidgetHostView"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_92

    const/4 p0, 0x1

    goto :goto_93

    :cond_92
    const/4 p0, 0x0

    :goto_93
    return p0
.end method

.method private createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;
    .registers 7

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    if-lez v0, :cond_4c

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_4c

    :cond_d
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    iget-object v4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {v3, v4, p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0

    :cond_4c
    :goto_4c
    const-string p0, "Widget"

    const-string v0, "CustomLauncherAppWidgetHostView"

    const-string v1, "createClipSmoothRoundBitmap bitmap is null"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private dealLayoutParams(Landroid/view/View;F)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-lez v0, :cond_26

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_26

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int p2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    if-lez v0, :cond_2e

    if-lez v1, :cond_2e

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    return-void
.end method

.method private dealPaddingAndMargin(Landroid/view/View;F)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->saveMarginData(Landroid/view/View;F)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->savePaddingData(Landroid/view/View;F)V

    return-void
.end method

.method private dealTextSizeScale(Landroid/view/View;FLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    const v2, 0x3f0ccccd  # 0.55f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_21

    int-to-float v2, v1

    iput v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    :cond_21
    iget p0, p3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/high16 p3, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_9f

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v7, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_57

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v7, v4

    :cond_57
    cmpl-float v4, p0, v3

    if-eqz v4, :cond_9f

    cmpl-float v4, v7, v3

    if-eqz v4, :cond_9f

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, p0

    if-lez v4, :cond_9f

    div-float v1, p0, v7

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p0, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p0, v4

    div-float/2addr p0, v7

    invoke-virtual {v0, v3, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p0

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p0

    float-to-int p0, v7

    invoke-virtual {p1, v4, v5, v6, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_9f
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_aa

    invoke-virtual {v0, v3, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_aa
    int-to-float p0, v1

    mul-float/2addr p0, p2

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isSearchBoxWidgetView()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v0, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/SwitchStateRenderer;->drawWidgetBackground(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;)V

    :cond_25
    return-void
.end method

.method private drawDeleteIcon(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isSearchBoxWidgetView()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v0, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher/SwitchStateRenderer;->drawDeleteIcon(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Z)V

    :cond_26
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->startUpdateAppWidget()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->lambda$clickForRecentAnimReverse$1()V

    return-void
.end method

.method private forceUpdateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLayoutID:I

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLayoutID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "updateAppWidget,widgetId:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",widgetInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,remoteViews:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Widget"

    const-string v1, "CustomLauncherAppWidgetHostView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->changePaddingIfNecessary()V

    :cond_55
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->lambda$onTouchEvent$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;
    .registers 6

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0

    :cond_1c
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_23

    check-cast v2, Landroid/widget/ImageView;

    return-object v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_26
    return-object v1
.end method

.method private getAppWidgetImageViewBottom(Landroid/view/View;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/view/View;)I
    .registers 6

    instance-of p0, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_2c

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    return p0

    :cond_2c
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p0

    return p0
.end method

.method private getAppWidgetTitleView(Landroid/view/View;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/widget/TextView;
    .registers 8

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_24

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_52

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_38

    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetTitleView(Landroid/view/View;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0

    :cond_38
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4f

    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    return-object v2

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_52
    return-object v1
.end method

.method private getLocation(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_70

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_70

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    div-float/2addr p0, v2

    add-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpl-float v3, v1, v0

    if-lez v3, :cond_5d

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5d
    cmpl-float v0, p0, v0

    if-lez v0, :cond_70

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_70
    return-void
.end method

.method private getScaleRatio(Landroid/view/View;Landroid/view/View;F)F
    .registers 8

    instance-of p0, p2, Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    return p3

    :cond_5
    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p0

    if-nez p0, :cond_15

    return p3

    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_d7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_d7

    if-lez p0, :cond_d7

    if-gtz v0, :cond_43

    goto/16 :goto_d7

    :cond_43
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    const/high16 v3, 0x3f800000  # 1.0f

    if-le p2, p0, :cond_72

    int-to-float p0, p0

    mul-float/2addr p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_72

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_6e
    int-to-float p1, p1

    div-float p3, p0, p1

    goto :goto_d7

    :cond_72
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-le p0, v0, :cond_8a

    int-to-float p0, v0

    mul-float/2addr p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_8a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_6e

    :cond_8a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    if-le p2, v2, :cond_b1

    int-to-float p0, v2

    mul-float/2addr p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    div-float p2, p0, p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_b1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_af
    add-int/2addr p1, p2

    goto :goto_6e

    :cond_b1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, p0

    if-le p2, v1, :cond_d7

    int-to-float p0, v1

    mul-float/2addr p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    div-float p2, p0, p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_d7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_af

    :cond_d7
    :goto_d7
    return p3
.end method

.method private getWidgetRect()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private hasPaddingInChildren(ILandroid/view/ViewGroup;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    return v0

    :cond_5
    if-nez p2, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    add-int/2addr p1, v1

    move v2, v0

    :goto_b
    :try_start_b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_32

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2e

    :cond_26
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->hasPaddingInChildren(ILandroid/view/ViewGroup;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_32

    if-eqz v3, :cond_2f

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_32
    :cond_32
    return v0
.end method

.method private isDeleteIconVisible()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static isGridLayout(Landroid/view/ViewGroup;)Z
    .registers 1

    instance-of p0, p0, Landroid/widget/GridLayout;

    return p0
.end method

.method private isNeedBackToggleBarLastState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/states/ToggleBarState;

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isDeleteIconVisible()Z

    move-result v0

    const-string v2, "CustomLauncherAppWidgetHostView"

    const-string v3, "Widget"

    if-nez v0, :cond_25

    const-string p0, "delete icon not visible"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "mDeleteIconRect isEmpty"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v5, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/launcher/SwitchStateRenderer;->getWidgetDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    :cond_41
    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_5a

    const-string p0, "mDeleteIconRect contains"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5a
    return v1
.end method

.method private synthetic lambda$clickForRecentAnimReverse$1()V
    .registers 3

    const-string v0, "CustomLauncherAppWidgetHostView"

    const-string v1, "clickForRecentAnimReverse"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    :cond_11
    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsRemoveBrowserWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_1c
    return-void
.end method

.method private notifyAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_7
    return-void
.end method

.method private notifyAnimationStart()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHandler:Landroid/os/Handler;

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private rescaleOtherWidgetWhenOverlapping(Landroid/view/ViewGroup;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    if-eqz v0, :cond_6b

    if-eqz p2, :cond_6b

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne p2, v1, :cond_6b

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6b

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6b

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetTitleView(Landroid/view/View;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_4a

    if-nez v0, :cond_33

    goto :goto_4a

    :cond_33
    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetImageViewBottom(Landroid/view/View;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result p3

    if-le p1, p3, :cond_6b

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result p1

    if-lez p1, :cond_6b

    const p1, 0x3f666666  # 0.9f

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    goto :goto_6b

    :cond_4a
    :goto_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "rescaleOtherWidgetWhenOverlapping skip, imageView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " titleView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Widget"

    const-string p2, "CustomLauncherAppWidgetHostView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private resetChildViewSize(Landroid/view/View;ZFLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 13

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Landroid/widget/AdapterView;

    const-string v2, "CustomLauncherAppWidgetHostView"

    const-string v3, "Widget"

    const/4 v4, 0x1

    if-nez v1, :cond_8b

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_8b

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1b

    goto/16 :goto_8b

    :cond_1b
    invoke-static {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isGridLayout(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, " resetChildViewSize : it can adjust."

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_32
    if-ltz v1, :cond_68

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_49

    invoke-direct {p0, v5, v0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getScaleRatio(Landroid/view/View;Landroid/view/View;F)F

    move-result v6

    cmpg-float v7, v6, p3

    if-gez v7, :cond_45

    move p3, v6

    :cond_45
    invoke-direct {p0, v5, v4, p3, p4}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZFLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_65

    :cond_49
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_5b

    invoke-direct {p0, v5, v0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getScaleRatio(Landroid/view/View;Landroid/view/View;F)F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, v5, v6, p4}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealTextSizeScale(Landroid/view/View;FLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    goto :goto_65

    :cond_5b
    invoke-direct {p0, v5, v0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getScaleRatio(Landroid/view/View;Landroid/view/View;F)F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    :goto_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_68
    if-eqz p2, :cond_8a

    iget-boolean p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScrollView:Z

    if-nez p2, :cond_8a

    const-string p2, " needDealParentParams : ratio"

    const-string p4, ", view.id"

    invoke-static {p2, p3, p4}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    :cond_8a
    return-void

    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_96

    const-string p1, " resetChildViewSize : it can scroll."

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    iput-boolean v4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScrollView:Z

    return-void
.end method

.method private saveMarginData(Landroid/view/View;F)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_31

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int p2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    return-void
.end method

.method private savePaddingData(Landroid/view/View;F)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private scaleAppWidgetSize(Landroid/view/ViewGroup;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    const-string v1, "CustomLauncherAppWidgetHostView"

    const-string v2, "Widget"

    const/4 v3, 0x0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    if-nez v0, :cond_33

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_32

    const-string/jumbo p1, "scaleAppWidgetSize mHasUpdateRemoteView"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " getAppWidgetId()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return v3

    :cond_33
    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_57

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_54

    const-string/jumbo p1, "scaleAppWidgetSize failed,  no need scale!mWidgetScaleRatio"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    iput-boolean v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    return v3

    :cond_57
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_77

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_76

    const-string/jumbo p1, "scaleAppWidgetSize failed, no need scale!mWidgetScaleRatio"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    return v3

    :cond_77
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_a6

    const-string/jumbo v0, "scaleAppWidgetSize widget="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mWidgetScaleRatio="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", needDealWithPadding="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    const/4 v0, 0x1

    if-eqz p2, :cond_ba

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, p2, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZFLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_bf

    :cond_ba
    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZFLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :goto_bf
    iput-boolean v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    iput-boolean v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScrollView:Z

    iput-boolean v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasUpdateRemoteView:Z

    return v0
.end method

.method private scaleFirstChildIfNeeded()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetRect()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c4

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-gt v1, v2, :cond_4f

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_34

    goto :goto_4f

    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gt v1, p0, :cond_c4

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_c4

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_c4

    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const-string/jumbo v2, "scaleFirstChildIfNeeded, scaleAdapted"

    const-string v3, " child.getHeight()"

    invoke-static {v2, v1, v3}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWidgetCornerRect.height()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " child.getWidth()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWidgetCornerRect.width()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " child.getScaleX()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Widget"

    const-string v1, "CustomLauncherAppWidgetHostView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method private scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->checkIfOplusWeatherWidgetNeedScale(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    const v0, 0x3f5c28f6  # 0.86f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleAppWidgetSize(Landroid/view/ViewGroup;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z

    return-void
.end method

.method private scaleOtherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->checkIfOtherWidgetNeedScale(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "!checkIfOtherWidgetNeedScale"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const-string p2, "Widget"

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleAppWidgetSize(Landroid/view/ViewGroup;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->rescaleOtherWidgetWhenOverlapping(Landroid/view/ViewGroup;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :cond_26
    return-void
.end method

.method private startUpdateAppWidget()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v1, "CustomLauncherAppWidgetHostView"

    const-string v2, "Widget"

    if-eqz v0, :cond_23

    const-string/jumbo v0, "startUpdateAppWidget delay end. forceUpdateAppWidget.,widgetInfo:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->forceUpdateAppWidget(Landroid/widget/RemoteViews;)V

    goto :goto_38

    :cond_23
    const-string/jumbo v0, "startUpdateAppWidget delay end. mRemoteViews is null,widgetInfo:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method


# virtual methods
.method public addDeleteBgIndicatorView()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getLocation(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_61
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v3, v2, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->startBackgroundAnim(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public applySwitchState(ZIZ)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iput v3, p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void

    :cond_26
    if-eqz p1, :cond_2a

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_41

    iget-object v4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v4, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_41
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v4, v1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4d

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void

    :cond_4d
    if-eqz p3, :cond_7e

    sget-object p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    aput v3, v2, v0

    invoke-static {p0, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_85

    if-eqz p1, :cond_85

    iput-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    goto :goto_85

    :cond_7e
    iput-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    iput v3, v1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    :cond_85
    :goto_85
    return-void
.end method

.method public clickForRecentAnimReverse()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v0, Lcom/android/launcher3/model/b1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/model/b1;->run()V

    goto :goto_1e

    :cond_19
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public clipCorner(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_24

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_24

    move v2, v4

    :cond_24
    if-eqz v0, :cond_2a

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-gtz v0, :cond_2c

    :cond_2a
    if-eqz v1, :cond_8e

    :cond_2c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipCorner: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CustomLauncherAppWidgetHostView"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8e

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne p2, v1, :cond_8e

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne p2, v1, :cond_8e

    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p2

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {p2, v0, p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_8e
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_2f

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2f

    move v3, v5

    :cond_2f
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_38

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-gtz v1, :cond_3a

    :cond_38
    if-eqz v2, :cond_6d

    :cond_3a
    if-eqz v3, :cond_6d

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5e

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_6d

    :cond_5e
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_6d
    :goto_6d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->drawDeleteIcon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_d

    if-nez v0, :cond_d

    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomLauncherAppWidgetHostView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_51

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3c

    goto :goto_62

    :cond_3c
    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getMultiFingerPressList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->startUpdateAppWidget()V

    goto :goto_62

    :cond_51
    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getMultiFingerPressList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_62
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCustomWidgetPadding()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)F
    .registers 9

    const/4 p0, 0x4

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v2, 0x1

    aput v1, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x3

    aput v1, p0, v4

    invoke-static {p1, p3, p0, v0, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p1

    aget p3, p0, v0

    aget v1, p0, v3

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    aget p3, p0, v2

    aget v1, p0, v4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    aget p3, p0, v0

    aget v0, p0, v3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    aget p3, p0, v2

    aget p0, p0, v4

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getLocation(Landroid/graphics/RectF;)V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)F

    iget p0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    invoke-virtual {v0, p0, v3, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getVisibility()I
    .registers 3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    const/4 p0, 0x4

    return p0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getWidgetBoundsForPopupShortCut(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getWidgetId()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    iget p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getWidgetPackage()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidgetView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_5

    move-object p0, v0

    :cond_5
    return-object p0
.end method

.method public isSearchBoxWidgetView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mAsyncTraceCallback:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->registerAsyncTraceListener(Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mAsyncTraceCallback:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->unregisterAsyncTraceListener(Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CustomLauncherAppWidgetHostView"

    const-string v3, "Widget"

    const/4 v4, 0x1

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_32

    :cond_21
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    goto/16 :goto_de

    :cond_32
    :goto_32
    const-string/jumbo v0, "onInterceptTouchEvent in toggle bar state,return true"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isNeedBackToggleBarLastState()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo p0, "onInterceptTouchEvent need back togglebar last state return true"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_45
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return v4

    :cond_4c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v4

    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_de

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v5}, Lcom/android/statistics/LauncherStatistics;->statsOpenWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getOpeningRemoteAnimWidgetId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetId()I

    move-result v6

    if-ne v5, v6, :cond_8a

    move v5, v4

    goto :goto_8b

    :cond_8a
    move v5, v1

    :goto_8b
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getSwipingUpActivityPkg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    move v6, v4

    goto :goto_a2

    :cond_a1
    move v6, v1

    :goto_a2
    if-nez v5, :cond_b3

    if-eqz v6, :cond_a7

    goto :goto_b3

    :cond_a7
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setOpeningRemoteAnimWidgetId(I)V

    goto :goto_de

    :cond_b3
    :goto_b3
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOnceGestureProcessing()Z

    move-result v6

    if-eqz v6, :cond_cd

    if-nez v5, :cond_cd

    const-string/jumbo p0, "onInterceptTouchEvent,return true,isGestureRecentAnimRunning"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->forceStopAllRecentAnim()V

    return v4

    :cond_cd
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isCloseWidgetRemoteAnim()Z

    move-result v0

    if-eqz v0, :cond_de

    const-string/jumbo p0, "onInterceptTouchEvent,return true,isCloseWidgetRemoteAnim"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_de
    :goto_de
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p1

    if-nez p1, :cond_101

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1, v0, v5}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isInterceptItemClickFromHighTempreatureProtection(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_102

    :cond_101
    move v1, v4

    :cond_102
    if-eqz v1, :cond_11b

    const-string/jumbo p1, "onInterceptTouchEvent,return true,hasPerformedLongPress:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 10

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    sub-int/2addr p4, p5

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/launcher/SwitchStateRenderer;->getWidgetDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRectF:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p3, p3, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/4 p2, 0x1

    :try_start_5d
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    instance-of p4, p3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz p4, :cond_103

    check-cast p3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget p4, p3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    if-ne p4, p2, :cond_70

    iget p4, p3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_6d} :catch_ee

    if-ne p4, p2, :cond_70

    goto :goto_71

    :cond_70
    move p5, p2

    :goto_71
    :try_start_71
    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isOplusWeatherWidget(Landroid/content/ComponentName;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isOplusSelfWidget(Landroid/content/ComponentName;)Z

    move-result p2

    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-static {p4}, Lcom/android/common/util/WidgetUtils;->isOPMarketWidget(Landroid/content/ComponentName;)Z

    move-result p4

    if-eqz p5, :cond_e9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result v1

    if-nez v1, :cond_a6

    const-string p2, "Widget"

    const-string/jumbo p3, "scaleWidgetSize failed, current launcher isInVisible!"

    invoke-static {p2, v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a6
    iget-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz v1, :cond_ae

    invoke-direct {p0, p0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_e9

    :cond_ae
    if-nez p2, :cond_e9

    if-eqz p4, :cond_ba

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_e9

    :cond_ba
    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isShouldFilterWidgetSize(Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_e9

    invoke-direct {p0, p0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOtherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_e9

    :cond_c8
    iget-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz v1, :cond_d0

    invoke-direct {p0, p0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_e9

    :cond_d0
    if-nez p2, :cond_e9

    if-eqz p4, :cond_dc

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_e9

    :cond_dc
    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isShouldFilterWidgetSize(Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_e9

    invoke-direct {p0, p0, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOtherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    :try_end_e9
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_e9} :catch_eb

    :cond_e9
    :goto_e9
    move p2, p5

    goto :goto_103

    :catch_eb
    move-exception p3

    move p2, p5

    goto :goto_ef

    :catch_ee
    move-exception p3

    :goto_ef
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, " scaleWidgetSize, e = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    :goto_103
    if-eqz p2, :cond_108

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleFirstChildIfNeeded()V

    :cond_108
    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_10e

    if-eqz p1, :cond_119

    :cond_10e
    if-eqz p2, :cond_113

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_113
    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_119
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getNaturalWhiteList()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_2c

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->getSIsSwitchingCurrentCellLayout()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_36
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-nez v1, :cond_4c

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v2

    if-nez v2, :cond_56

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_56
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_67

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v6, v4, :cond_67

    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_67
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    if-eq v3, v6, :cond_138

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v3, v4, :cond_73

    goto/16 :goto_138

    :cond_73
    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-interface {p0, v3, v1, p1, v6}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLastPaddingRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_95

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_95

    sget-object v1, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getAlignWhiteList()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v4

    goto :goto_96

    :cond_95
    move v0, v5

    :goto_96
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v1

    const-string v3, "CustomLauncherAppWidgetHostView"

    const-string v6, "Widget"

    if-lez v1, :cond_e3

    invoke-direct {p0, v5, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->hasPaddingInChildren(ILandroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_da

    const-string v1, "has Padding In Children."

    invoke-static {v6, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b4

    const-string/jumbo v0, "onMeasure: needAlignForWhiteList"

    invoke-static {v6, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    :cond_b4
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_e3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_e3

    :cond_da
    if-eqz v0, :cond_e3

    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_e3
    :goto_e3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v5

    const-string v1, "BOTTOM.WIDGET - "

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v3, "onMeasure providerName = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_118

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    if-eqz v0, :cond_118

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v1, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    goto :goto_125

    :cond_118
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :goto_125
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher/SwitchStateRenderer;->getCardDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_138
    :goto_138
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_78

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_84

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    goto :goto_84

    :cond_1d
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    const-string v3, "Widget"

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/oplus/compatui/FastClickUtil;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLauncherLockedAndToast, appWidgetInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mPressDeleteIcon: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    invoke-static {v0, p0, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v2

    :cond_4f
    new-instance v0, Lcom/android/launcher/widget/a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :cond_57
    iget-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    if-eqz p1, :cond_6e

    const-string p1, "CustomLauncherAppWidgetHostView"

    const-string/jumbo v0, "onTouchEvent to back toggleBar last state"

    invoke-static {v3, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    :cond_6e
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    goto :goto_84

    :cond_78
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isNeedBackToggleBarLastState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    :goto_84
    return v1
.end method

.method public performClick()Z
    .registers 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public prepareView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    return-void
.end method

.method public reInflate()V
    .registers 4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "reInflate. isAttachedToWindow():"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isAttachedToWindow()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Widget"

    const-string v1, "CustomLauncherAppWidgetHostView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public removeDeleteBgIndicatorView()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-eqz v0, :cond_40

    const-string/jumbo v0, "removeDeleteBgIndicatorView,widgetId:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",widgetInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "CustomLauncherAppWidgetHostView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->startBackgroundAnim(ZLandroid/graphics/Rect;)V

    :cond_40
    return-void
.end method

.method public resetRecentReverseOpts()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_14

    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2f

    :cond_14
    const-string p0, "alpha="

    const-string v0, ", caller: "

    invoke-static {p0, p1, v0}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Widget"

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public setAnimatedVisible()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    sget-object v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_36

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setIsFirstAddToScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    return-void
.end method

.method public setIsSearchBoxWidgetView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setAlpha(F)V

    return-void

    :cond_8
    if-nez p1, :cond_f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setAlpha(F)V

    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "CustomLauncherAppWidgetHostView"

    const-string v3, "Widget"

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remoteViews : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; info = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; AppWidgetId() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    if-eqz v0, :cond_40

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_40

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_42

    :cond_40
    const-string v0, ""

    :goto_42
    sget-object v1, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getShakeWhiteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getMultiFingerPressList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string/jumbo p1, "updateAppWidget delay because pressed ,widgetInfo:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_70
    if-eqz p1, :cond_a3

    sget-object v1, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-static {v1}, Lcom/android/launcher3/card/LauncherCardUtil;->checkDuringAnimation(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_81

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->notifyAnimationStart()V

    :cond_81
    const-string/jumbo v0, "updateAppWidget delay because during anim. id:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRemoteViews:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void

    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidget#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->forceUpdateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

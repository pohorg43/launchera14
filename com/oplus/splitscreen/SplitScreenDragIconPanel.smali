.class public Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    }
.end annotation


# static fields
.field private static final ALPHA_SHOW:F = 1.0f

.field private static final BLUR:F = 60.0f

.field private static final COLOR_RGB:F = 255.0f

.field private static final DOUBLE:I = 0x2

.field private static final DOUBLE_FLOAT:F = 2.0f

.field private static final DRAG_ANIM_SURFACE_CORNER_RADIUS:F = 80.0f

.field private static final DRAG_ANIM_SURFACE_LOCATION_SCALE_DURATION:J = 0xfaL

.field private static final DRAG_PANEL_ALPHA:F = 0.8f

.field private static final DRAG_ZOOM_TIPS_COLOR:Ljava/lang/String; = "#99000000"

.field private static final DRAG_ZOOM_TIPS_COLOR_NIGHT:Ljava/lang/String; = "#D9FFFFFF"

.field private static final DROP_ANIM_SURFACE_RECT_SCALE_DURATION:J = 0x1b0L

.field private static final DROP_PANEL_IN:Landroid/view/animation/Interpolator;

.field private static final DROP_WAIT_TIMEOUT_MS:J = 0x3e8L

.field private static final EXTRA_HANDWRITING_PEN_ARRAY:Ljava/lang/String; = "extra_Handwriting_pen_array"

.field private static final FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

.field private static final LAYER:I = 0x1

.field private static final MSG_DELAY_RELEASE_SURFACE_DURATION:J = 0x64L

.field private static final MSG_RELEASE_SURFACE:I = 0x1

.field private static final PANEL_STATUS_ENLARGE:I = 0x1

.field private static final PANEL_STATUS_IDLE:I = -0x1

.field private static final PANEL_STATUS_SMALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SplitScreenDragIconPanel"

.field private static final ZOOM_AREA_HEIGHT:F = 235.0f

.field private static final ZOOM_AREA_WIDTH:F = 132.0f

.field private static final ZOOM_CONTENT_DURATION:J = 0x12cL

.field private static final ZOOM_HIDE_DURATION:J = 0x75L

.field private static final ZOOM_RATIO:F = 1.7777778f

.field private static final ZOOM_SCALE:D = 0.7

.field private static final ZOOM_WIDTH_IN_DP:I = 0x1b0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

.field private mDragScaleAnimator:Landroid/animation/ValueAnimator;

.field private mDragSurface:Landroid/view/SurfaceControl;

.field private mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

.field private mDropSplitAnimator:Landroid/animation/ValueAnimator;

.field private mDropTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHasLargeScreenFeature:Z

.field private mIconHeight:I

.field private mIconThumbOffsetX:I

.field private mIconThumbOffsetY:I

.field private mIconWidth:I

.field private mIsDragCenter:Z

.field private mIsDragSupportSplit:Z

.field private mIsDragSupportZoom:Z

.field private mIsDragToSplitMiniZed:Z

.field private mIsDragging:Z

.field private mIsEnterNoSupportMode:Z

.field private mIsFullZoom:Z

.field private mIsMini:Z

.field private mIsZoom:Z

.field public mLandscapeMiniVisiableSize:I

.field private mPanelCropRect:Landroid/graphics/Rect;

.field private mPanelStatus:I

.field private mPanelSurface:Landroid/view/SurfaceControl;

.field public mPortraitMiniVisiableSize:I

.field private mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

.field private mScreenPixelHeight:I

.field private mScreenPixelWidth:I

.field private mSmartSideBarRegion:Landroid/graphics/Rect;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

.field private mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

.field private mTextViewHost:Landroid/view/SurfaceControlViewHost;

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field public mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mZoomAnimSet:Landroid/animation/AnimatorSet;

.field private mZoomPanelHeight:I

.field private mZoomPanelWith:I

.field private mZoomTextPanelSurface:Landroid/view/SurfaceControl;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->DROP_PANEL_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-direct {v0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPortraitMiniVisiableSize:I

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mLandscapeMiniVisiableSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-direct {v2, p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-direct {v2, p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsEnterNoSupportMode:Z

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTimeOutRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x43040000  # 132.0f

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p2

    iput p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelWith:I

    const/high16 p2, 0x436b0000  # 235.0f

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelHeight:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_portrait_visible_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPortraitMiniVisiableSize:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_landscape_visible_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mLandscapeMiniVisiableSize:I

    new-instance p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;

    invoke-direct {p1, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->addListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p2, "SplitScreenDragIconPanel()  feature:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->lambda$new$0()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    return p0
.end method

.method public static synthetic access$1302(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelCropRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->showPanelSurface(ZZ)V

    return-void
.end method

.method public static synthetic access$2202(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelWith:I

    return p0
.end method

.method public static synthetic access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelHeight:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startDropAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->findDragRunningTask(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->lambda$startZoomWindowFromDrag$1(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private cancelDropAnimatorIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method

.method private cancelScalePanelAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method

.method private createDragIconPanelSurface()Z
    .registers 8

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_24
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v0, "panel surface of drag surface"

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "View.startDragAndDrop"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/wm/shell/R$color;->split_drag_icon_panel_color_dark:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_91

    :cond_85
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/wm/shell/R$color;->split_drag_icon_panel_color_normal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_91
    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000  # 255.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    aput v1, v3, v2

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42a00000  # 80.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "createDragIconPanelSurface   ,mIconThumbOffsetX="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIconThumbOffsetY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",icon.width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",icon.height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private createDropAnimator(Landroid/view/DragEvent;I)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelDropAnimatorIfNeed()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->updateMinimizedVisibleSize()V

    sget v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    new-instance v8, Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->getPanelWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->getPanelHeight()I

    move-result v3

    invoke-direct {v8, v0, p1, v2, v3}, Lcom/oplus/splitscreen/DropAnimatorInfo;-><init>(IIII)V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    iget v6, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    move-object v3, v8

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getDropTargetPosition(Lcom/oplus/splitscreen/DropAnimatorInfo;IIII)Lcom/oplus/splitscreen/DropAnimatorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    iget v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    invoke-virtual {v3, v8, v2, v4, v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->resetRect(Lcom/oplus/splitscreen/DropAnimatorInfo;Lcom/oplus/splitscreen/DropAnimatorInfo;II)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_a0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1b0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->DROP_PANEL_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v3, "createDropAnimator  x="

    const-string v4, ",y="

    const-string v5, ",targetDirection"

    invoke-static {v3, v0, v4, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",startPos{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "},endPos{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "},miniSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    nop

    :array_a0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private createZoomBgAlphaAnimation()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_24
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private findDragRunningTask(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getUserId()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    if-eqz v1, :cond_88

    if-ltz v2, :cond_88

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getRunningTasks()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_88

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object v5, v0

    :goto_28
    if-ltz v3, :cond_84

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    sget-object v7, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findDragRunningTask ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_81

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_81

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    if-ne v2, v8, :cond_81

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getScenario(Landroid/content/res/Configuration;)I

    move-result v7

    if-ne v7, v4, :cond_76

    invoke-static {v6}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isInFlexibleEmbedded(Landroid/app/TaskInfo;)Z

    move-result v7

    if-nez v7, :cond_81

    :cond_76
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v7, :cond_7c

    move-object v0, v6

    goto :goto_84

    :cond_7c
    if-nez v5, :cond_81

    if-eqz v7, :cond_81

    move-object v5, v6

    :cond_81
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_84
    :goto_84
    if-eqz v0, :cond_87

    goto :goto_88

    :cond_87
    move-object v0, v5

    :cond_88
    :goto_88
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDragRunningTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRunningTasks()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method private handleDragDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    if-nez v0, :cond_a

    goto :goto_50

    :cond_a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop  was in  isInSplit"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v0

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->convertPosToDirection(ZI)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop  direction was in unknown"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop   drop in sideBar "

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3d
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop isDragMirageTask,no drop animator"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4b
    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createDropAnimator(Landroid/view/DragEvent;I)Z

    move-result p0

    return p0

    :cond_50
    :goto_50
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p2, "handleDragDrop no need animator,isDragging="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",dragToSplitMiniZed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private handleDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p1

    if-nez p1, :cond_27

    if-eqz p2, :cond_13

    if-nez p3, :cond_13

    goto :goto_27

    :cond_13
    if-eqz p3, :cond_4b

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-direct {p0, p4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanelPad(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    goto :goto_4b

    :cond_23
    invoke-virtual {p0, v0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(ZZ)Z

    goto :goto_4b

    :cond_27
    :goto_27
    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v2, "handleDragLocation isInSideBar:"

    const-string v3, ",changed:"

    const-string v4, ",targetRect:"

    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",newTarget:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iget-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-virtual {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(ZZ)Z

    :cond_4b
    :goto_4b
    return v0
.end method

.method private handleDragStart(Landroid/view/DragEvent;)Z
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v3, "handleDragStart() need to cancel and reset"

    invoke-static {v1, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelDropAnimatorIfNeed()V

    const-string v1, "handleDragStart"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;Z)Z

    :cond_1a
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v1

    :goto_23
    iput-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-virtual {v3, p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isValidDragMimetype(Landroid/view/DragEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-virtual {v4, p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->parseSmartSideBarRegion(Landroid/view/DragEvent;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v0

    :goto_3b
    if-eqz v3, :cond_b3

    if-eqz v2, :cond_b3

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    if-nez v5, :cond_44

    goto :goto_b3

    :cond_44
    iput-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->parseDragEvent(Landroid/view/DragEvent;)Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_55

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    goto :goto_56

    :cond_55
    move-object p1, v1

    :goto_56
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_5c
    if-eqz v1, :cond_ab

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_ab

    :cond_65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v0, "handleDragStart() sidBarRegion"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createDragIconPanelSurface()Z

    move-result p0

    return p0

    :cond_ab
    :goto_ab
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragStart()  screenRect no Valid."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b3
    :goto_b3
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleDragStart()  no Valid hasType="

    const-string v4, ",hasRect="

    const-string v5, ",surface="

    invoke-static {v1, v3, v4, v2, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private handleHidePanelPad(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsMini:Z

    if-eqz p1, :cond_1a

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1a

    move p1, v1

    goto :goto_1b

    :cond_1a
    move p1, v2

    :goto_1b
    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragCenter:Z

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsEnterNoSupportMode:Z

    if-nez p1, :cond_29

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    if-nez p1, :cond_2b

    :cond_29
    move p1, v1

    goto :goto_2c

    :cond_2b
    move p1, v2

    :goto_2c
    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsFullZoom:Z

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isZoom()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsMini:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    move v0, v1

    :goto_40
    if-eqz v0, :cond_46

    invoke-virtual {p0, v2, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(ZZ)Z

    goto :goto_4b

    :cond_46
    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-virtual {p0, v1, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(ZZ)Z

    :goto_4b
    return-void
.end method

.method private isFixedOrientationLandscape(Landroid/content/ComponentName;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x2

    :try_start_2
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFixedOrientationLandscape package not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    :goto_26
    if-eq p0, v1, :cond_2c

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2c

    move v1, p0

    :cond_2c
    if-eqz v1, :cond_39

    const/4 p0, 0x6

    if-eq v1, p0, :cond_39

    const/16 p0, 0x8

    if-eq v1, p0, :cond_39

    const/16 p0, 0xb

    if-ne v1, p0, :cond_3a

    :cond_39
    const/4 v0, 0x1

    :cond_3a
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "mTimeOutRunnable"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releasePanelSurface(Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$startZoomWindowFromDrag$1(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getUserId()I

    move-result v1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    return-void
.end method

.method private parseDragEvent(Landroid/view/DragEvent;)Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    goto :goto_c

    :catch_8
    move-exception p0

    goto/16 :goto_10b

    :cond_b
    move-object v1, v0

    :goto_c
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v0

    :goto_19
    if-eqz p1, :cond_123

    if-eqz v1, :cond_123

    if-nez v3, :cond_21

    goto/16 :goto_123

    :cond_21
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/PendingIntent;

    if-eqz v8, :cond_10a

    if-nez v9, :cond_39

    goto/16 :goto_10a

    :cond_39
    invoke-virtual {v9, v2}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    move-object v6, v1

    goto :goto_52

    :cond_51
    move-object v6, v0

    :goto_52
    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->parseDragFlag(Landroid/view/DragEvent;)I

    move-result p1

    new-instance v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-object v4, v1

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/content/ComponentName;ILandroid/os/UserHandle;Landroid/app/PendingIntent;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5e} :catch_8

    :try_start_5e
    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v3

    sget-object v4, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDragEvent launchState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3e9

    const/4 v6, 0x1

    if-ne v3, v5, :cond_91

    move v3, v6

    goto :goto_92

    :cond_91
    move v3, v2

    :goto_92
    iput-boolean v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getUserId()I

    move-result v7

    iget-object v8, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v7, v8, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_b8

    move v0, v6

    goto :goto_b9

    :cond_b8
    move v0, v2

    :goto_b9
    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v3, :cond_c4

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMinimized()Z

    move-result v3

    if-eqz v3, :cond_c4

    move v2, v6

    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseDragEvent drag isDragSupportSplit:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isDragSupportZoom:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isInSplit:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsDragToSplitMiniZed:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",isMinimized:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",tag:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_106} :catch_107

    goto :goto_122

    :catch_107
    move-exception p0

    move-object v0, v1

    goto :goto_10b

    :cond_10a
    :goto_10a
    return-object v0

    :goto_10b
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDragEvent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_122
    return-object v1

    :cond_123
    :goto_123
    return-object v0
.end method

.method private releasePanelSurface(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releasePanelSurface(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private releasePanelSurface(Ljava/lang/String;Z)Z
    .registers 6

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePanelSurface   -E reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_25

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isZoom()Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p0, "releasePanelSurface zoom"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_25
    :try_start_25
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2e

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2e
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    const/4 p2, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    :cond_46
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_5a

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5a
    :goto_5a
    const/4 p0, 0x1

    return p0
.end method

.method private releaseSurface(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;Z)Z

    return-void
.end method

.method private releaseWhenDrop(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    if-nez p1, :cond_f

    const-string p1, "releaseWhenDrop"

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private showPanelSurface(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->showPanelSurfaceZoom()V

    goto :goto_26

    :cond_16
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_26

    :cond_20
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_26
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2b
    return-void
.end method

.method private showPanelSurfaceZoom()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_31

    const-string v0, "#FF4D4D4D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_37

    :cond_31
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_37
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    aput v0, v1, v2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "showPanelSurface mIsEnterNoSupportMode:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsEnterNoSupportMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsDragSupportSplit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsDragSupportZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsEnterNoSupportMode:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    if-nez v0, :cond_b4

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    if-eqz v0, :cond_b4

    :cond_92
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createTextSurface()V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_b4
    return-void
.end method

.method private startDropAnimation(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDropAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_25
    return-void
.end method

.method private startScalePanel(ZZ)V
    .registers 10

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    const/4 p2, 0x2

    if-eqz p1, :cond_14

    new-array p2, p2, [F

    fill-array-data p2, :array_ac

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1f

    :cond_14
    new-array p2, p2, [F

    fill-array-data p2, :array_b4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    :goto_1f
    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p2, 0x1

    goto :goto_2d

    :cond_2c
    move p2, v0

    :goto_2d
    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    if-eqz v1, :cond_41

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelWith:I

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelHeight:I

    iget v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_50

    :cond_41
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    iget v6, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getPanelRect(IIZII)Landroid/graphics/Rect;

    move-result-object v1

    :goto_50
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->init(Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScalePanel  isEnlarge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",panelOffsetRect="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isLandScreen="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mIsZoom:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_ac
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public createTextSurface()V
    .registers 10

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v0, "ignore createTextSurface: surface already existed."

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/16 v2, 0x7f6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTextViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->drag_zoom_text_panel_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/android/wm/shell/R$id;->drag_to_zoom_notify_tips_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    if-eqz v2, :cond_56

    const-string v2, "#D9FFFFFF"

    goto :goto_58

    :cond_56
    const-string v2, "#99000000"

    :goto_58
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x7f6

    const/16 v7, 0x18

    const/4 v8, -0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelWith:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomPanelHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v2, "zoomTextPanelIcon"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x20000040

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTextViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTextViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    if-eqz v0, :cond_bb

    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoomTextPanelIcon called sp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomTextPanelSurface:Landroid/view/SurfaceControl;

    :cond_bb
    return-void
.end method

.method public getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    return-object p0
.end method

.method public getDragTaskinfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleHidePanel(ZZ)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getTagId()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleHidePanel mDragItemInfo:"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_14
    const/4 v0, 0x1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    if-eq p1, v1, :cond_37

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/oplus/splitscreen/SplitScreenVibrator;->vibrateEffectId(Landroid/content/Context;IZ)V

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-direct {p0, v2, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startScalePanel(ZZ)V

    goto :goto_36

    :cond_28
    iget p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    if-eq p1, v0, :cond_37

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/oplus/splitscreen/SplitScreenVibrator;->vibrateEffectId(Landroid/content/Context;IZ)V

    invoke-direct {p0, v0, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startScalePanel(ZZ)V

    :goto_36
    move v2, v0

    :cond_37
    return v2
.end method

.method public isDragMirageBgTask()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isMirageBackgroundTask:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isDragSupportSplit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportSplit:Z

    return p0
.end method

.method public isDragSupportZoom()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragSupportZoom:Z

    return p0
.end method

.method public isInSideBarRegion(Landroid/view/DragEvent;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_22

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v3, "isInSideBarRegion() res="

    const-string v4, ",region="

    invoke-static {v3, v0, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mIsDragging:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    return p0
.end method

.method public isSupportApkCalled(Landroid/view/DragEvent;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->parseDragEvent(Landroid/view/DragEvent;)Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getTagId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_21

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getTagId()I

    move-result p1

    if-eq p1, v1, :cond_21

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getTagId()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_22

    :cond_21
    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public isZoom()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsMini:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragCenter:Z

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsFullZoom:Z

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public notifyDragActionEvent(Landroid/view/DragEvent;IZ)V
    .registers 9

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    :try_start_c
    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragStart(Landroid/view/DragEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    goto :goto_71

    :cond_13
    iget-boolean v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_5a

    if-eqz v3, :cond_71

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3b

    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragDrop(Landroid/view/DragEvent;I)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_20

    move v1, p1

    goto :goto_37

    :catch_20
    move-exception p1

    :try_start_21
    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDragActionEvent() drop ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    invoke-direct {p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenDrop(Z)V

    goto :goto_71

    :cond_3b
    const/4 p1, 0x6

    if-ne v0, p1, :cond_44

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsZoom:Z

    invoke-virtual {p0, v2, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(ZZ)Z

    goto :goto_71

    :cond_44
    const/4 p1, 0x4

    if-ne v0, p1, :cond_71

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-nez p1, :cond_54

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    :cond_54
    if-nez p3, :cond_71

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenEndNoDrop()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_59} :catch_5a

    goto :goto_71

    :catch_5a
    move-exception p1

    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDragActionEvent() ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    const/4 p1, 0x2

    if-eq v0, p1, :cond_a3

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v2, "notifyDragActionEvent() "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mIsDragging="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    const-string v0, ",position="

    const-string v3, ",dropHandled="

    invoke-static {v2, p0, v0, p2, v3}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",hasDropped="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z

    return-void
.end method

.method public releaseSurface(Ljava/lang/String;Z)Z
    .registers 6

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSurface   -E reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_2f

    if-nez p2, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isZoom()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p0, "releaseSurface return"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2f
    :try_start_2f
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 p2, 0x0

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    :cond_3f
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_53

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_53
    :goto_53
    const/4 p0, 0x1

    return p0
.end method

.method public releaseWhenEndNoDrop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    const-string v0, "releaseWhenEndNoDrop"

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releasePanelSurface(Ljava/lang/String;)Z

    return-void
.end method

.method public setIsEnterNoSupportMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsEnterNoSupportMode:Z

    return-void
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    return-void
.end method

.method public startZoomWindowFromDrag(Landroid/view/DragEvent;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_b

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "startZoomWindow event null"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "startZoomWindow isInSideBarRegion"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_19
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-eqz v1, :cond_13f

    iget-object v1, v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_23

    goto/16 :goto_13f

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isZoom()Z

    move-result v1

    if-nez v1, :cond_31

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "startZoomWindow is zoom"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_31
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3a
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iget-object v1, v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x64

    const-string v4, "extra_window_mode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0xc

    const-string v4, "launch_from_pocket_studio_zoom"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x43d80000  # 432.0f

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    const/high16 v5, 0x44400000  # 768.0f

    iget-object v6, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v5

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L  # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v8, v6

    double-to-int v3, v8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v5, v6

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p1, v7

    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v4, v6

    add-int/2addr v3, v7

    invoke-direct {v8, v6, v7, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "extra_Handwriting_pen_array"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_db

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_db
    sget-object v3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v4, "startZoomWindow x:"

    const-string v6, " y:"

    const-string v7, ",zoomRect:"

    invoke-static {v4, v5, v6, p1, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_154

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    new-instance v4, Lcom/android/launcher/q0;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher/q0;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iget-object v1, v1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_11d

    invoke-direct {p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isFixedOrientationLandscape(Landroid/content/ComponentName;)Z

    move-result v0

    :cond_11d
    invoke-virtual {v3, v4, v0, v8}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->init(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;ZLandroid/graphics/Rect;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createZoomBgAlphaAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mZoomAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    const/4 p0, 0x1

    return p0

    :cond_13f
    :goto_13f
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "startZoomWindow null "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :array_154
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

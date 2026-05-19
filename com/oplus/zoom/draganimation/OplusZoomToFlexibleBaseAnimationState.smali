.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;,
        Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;,
        Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
    }
.end annotation


# static fields
.field public static final ALPHA_PROGRESS:I = 0x12c

.field public static final ANIMATION_PROGRESS:I = 0x190

.field public static final ANIMATION_THREAD:Ljava/lang/String; = "zoom_flexible"

.field public static final BORDERLINE:I = 0x5

.field public static final CANVAS_CORNERRADIUS:F = 33.0f

.field public static final CANVAS_SIZE_SCALE:F = 1.1f

.field public static final CARD_DIM_ALPHA:F = 0.8f

.field public static final CARD_DIM_BLURRADIUS:I = 0x12c

.field public static final CONTENT_DIM_ALPHA:F = 0.75f

.field public static final CONTENT_DIM_BLURRADIUS:I = 0x12c

.field public static final DIVIDER_HALF:F = 0.5f

.field public static final DOUBLE_DIFF:I = 0x2

.field public static final DRAG_OVER:I = 0xe

.field private static final FEATURE_LMVIBRATOR_SUPPORT:Ljava/lang/String; = "oplus.software.vibrator_lmvibrator"

.field private static final ICON_DIMEN:I = 0x40

.field public static final ICON_DIM_ALPHA:F = 0.8f

.field public static final ICON_DIM_BLURRADIUS:I = 0x1e

.field public static final ICON_DIM_COLOR:Ljava/lang/String; = "#CC474747"

.field public static final LEFT_ANIMATION:I = 0x1

.field public static final LEFT_BACK:Ljava/lang/String; = "left_back"

.field public static final LEFT_DIFF_RATIO:F = 0.02f

.field public static final LEFT_DIM_FOR_BACK:Ljava/lang/String; = "left_dim_for_back"

.field public static final LEFT_DIM_FOR_ICON:Ljava/lang/String; = "left_dim_for_icon"

.field public static final LEFT_ICON:Ljava/lang/String; = "left_icon"

.field public static final LEFT_REPLACE:I = 0x6

.field public static final LEFT_REPLACE_RATIO:F = 0.38f

.field public static final LEFT_WHOLE:Ljava/lang/String; = "left_whole"

.field public static final MIDDLE_ANIMATION:I = 0x3

.field public static final MIDDLE_BACK_DIM_SURFACE:Ljava/lang/String; = "middle_back_dim"

.field public static final MIDDLE_BACK_SURFACE:Ljava/lang/String; = "middle_back"

.field public static final MIDDLE_ICON_SURFACE:Ljava/lang/String; = "middle_icon"

.field public static final MIDDLE_WHOLE_SURFACE:Ljava/lang/String; = "middle_whole_leash"

.field public static final MODE_ZOOM:I = 0x64

.field public static final NO_ANIMATION:I = 0x0

.field public static final PREPARE_ANIMATION:I = 0x2

.field public static final PREPARE_HEIGHT_RATIO:F = 0.958f

.field public static final PREPARE_OK:I = 0x4

.field public static final PREPARE_WIDTH_RATIO:F = 0.473f

.field public static final RECOVER_ZOOM:I = 0xa

.field public static final REPLACE_ICON:Ljava/lang/String; = "replace_icon"

.field public static final RIGHT_ANIMATION:I = 0x2

.field public static final RIGHT_BACK:Ljava/lang/String; = "right_back"

.field public static final RIGHT_DIM_FOR_BACK:Ljava/lang/String; = "right_dim_for_back"

.field public static final RIGHT_DIM_FOR_ICON:Ljava/lang/String; = "right_dim_for_icon"

.field public static final RIGHT_ICON:Ljava/lang/String; = "right_icon"

.field public static final RIGHT_REPLACE:I = 0x8

.field public static final RIGHT_REPLACE_RATIO:F = 0.62f

.field public static final RIGHT_WHOLE:Ljava/lang/String; = "right_whole"

.field public static final START_MIDDLE:I = 0xc

.field public static final STEP_DIFF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusZoomToFlexibleBaseAnimationState"

.field public static final TEXT_TO_CONTENT_REPLACE:F = 0.117f

.field public static final TIPS_RATIO:F = 0.49f

.field public static final TO_DRAG_OVER:I = 0xd

.field public static final TO_FLEXIBLE_BOTTOM_RATIO:F = 0.98f

.field public static final TO_FLEXIBLE_LEFT_RATIO:F = 0.41f

.field public static final TO_FLEXIBLE_RIGHT_RATIO:F = 0.59f

.field public static final TO_FLEXIBLE_TOP_RATIO:F = 0.81f

.field public static final TO_LEFT_REPLACE:I = 0x5

.field public static final TO_PREPARE_OK:I = 0x3

.field public static final TO_RECOVER_ZOOM:I = 0x9

.field public static final TO_RIGHT_REPLACE:I = 0x7

.field public static final TO_START_MIDDLE:I = 0xb

.field public static final TREBLE_DIFF:I = 0x3

.field private static final VIBRATER_ONCE:[J

.field public static final WAIT_NO_ANIMATION:I = 0xf

.field public static final WAIT_SCHEDULE:I = 0x1

.field public static final WAIT_TO_ZOOM_AGAIN:I

.field public static final WHOLE_BACK:Ljava/lang/String; = "whole_back"

.field public static final WHOLE_BACK_COLOR:I

.field public static final WHOLE_SURFACE:Ljava/lang/String; = "whole_leash"

.field public static final ZOOM_ANIMATION:I = 0x0

.field private static final ZOOM_CARD_DIM_COLOR:Ljava/lang/String; = "#FFFFFFFF"

.field private static final ZOOM_CARD_DIM_COLOR_DARK:Ljava/lang/String; = "#FF4D4D4D"

.field public static final ZOOM_CARD_DIM_OVERSTEP_RATIO:F = 0.2f

.field public static final ZOOM_CARD_HEIGHT_DP:I = 0xeb

.field public static final ZOOM_CARD_WIDTH_DP:I = 0x84

.field public static final ZOOM_DIM_FOR_BACK:Ljava/lang/String; = "zoom_dim_for_back"

.field public static final ZOOM_ICON:Ljava/lang/String; = "zoom_icon"


# instance fields
.field public mAgainToZoomX:I

.field public mAgainToZoomY:I

.field public mAlreadyDragOutZoomArea:Z

.field public mAlreadyUp:Z

.field public mAnimationHandler:Landroid/os/Handler;

.field public mAnimationThread:Landroid/os/HandlerThread;

.field public mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mBeforeUpState:I

.field public mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

.field public mCancleCurrentAnimation:Z

.field public mCanvasBottom:I

.field public mCanvasTop:I

.field public mContext:Landroid/content/Context;

.field public mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

.field public mDimColor:I

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mDisplayMaxLength:I

.field public mDownX:I

.field public mDownY:I

.field public mFlexibleAnimationHandler:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;

.field public mHorizontalLayout:Ljava/lang/Boolean;

.field private mLastVibrateState:I

.field public mLastX:I

.field public mLastY:I

.field public mLeftReplace:I

.field private mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

.field private mLock:Ljava/lang/Object;

.field public mNextTransferAnimation:Landroid/animation/ValueAnimator;

.field public mPrepareCrop:Landroid/graphics/Rect;

.field public mPrepareLeftPosition:Landroid/graphics/Point;

.field public mPrepareRightPosition:Landroid/graphics/Point;

.field public mRecoverZoom:Ljava/lang/Runnable;

.field public mRightReplace:I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mState:I

.field public mSurfaceSession:Landroid/view/SurfaceSession;

.field public mToFlexible:Landroid/graphics/Rect;

.field public mToHideWholeSurface:Ljava/lang/Runnable;

.field public mUiMode:I

.field private mVibrator:Landroid/os/Vibrator;

.field public mWholeBackSurface:Landroid/view/SurfaceControl;

.field public mWholeSurface:Landroid/view/SurfaceControl;

.field public mWm:Landroid/view/WindowManager;

.field public mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

.field public mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "#1A1A1A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WHOLE_BACK_COLOR:I

    const-string v0, "persist.sys.zoom_delay"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WAIT_TO_ZOOM_AGAIN:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->VIBRATER_ONCE:[J

    return-void

    nop

    :array_1c
    .array-data 8
        0x0
        0x32
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mState:I

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd  # 0.1f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasTop:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasBottom:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownX:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownY:I

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomX:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomY:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLock:Ljava/lang/Object;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastVibrateState:I

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance p1, Landroid/view/SurfaceSession;

    invoke-direct {p1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mFlexibleAnimationHandler:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const-string p2, "linearmotor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/os/LinearmotorVibrator;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method private getDisplayInfo()V
    .registers 3

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd  # 1.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    return-void
.end method

.method private initializeZoomAnimationSource()V
    .registers 4

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    const-string v1, "initializeZoomAnimationSource begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method


# virtual methods
.method public cancleCurrentAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->isCurrentAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public changeToState(I)V
    .registers 2

    return-void
.end method

.method public getBeforeUpState()I
    .registers 4

    const-string v0, "getBeforeUpState :"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const-string v2, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    return p0
.end method

.method public getLastDrag()Z
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "getLastDrag nowState:"

    const-string v2, " mBeforeUpState:"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " horizontalLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " leftReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    const-string v3, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {v1, v2, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_6a

    goto :goto_68

    :pswitch_4a  #0x3, 0x4
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-le v0, v2, :cond_69

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, p0, :cond_68

    goto :goto_69

    :cond_5d
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-le v0, v2, :cond_69

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, p0, :cond_68

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v1, 0x0

    :cond_69
    :goto_69
    :pswitch_69  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe
    return v1

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_4a  #00000003
        :pswitch_4a  #00000004
        :pswitch_69  #00000005
        :pswitch_69  #00000006
        :pswitch_69  #00000007
        :pswitch_69  #00000008
        :pswitch_69  #00000009
        :pswitch_69  #0000000a
        :pswitch_69  #0000000b
        :pswitch_69  #0000000c
        :pswitch_69  #0000000d
        :pswitch_69  #0000000e
    .end packed-switch
.end method

.method public getNavBarHeight()I
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWm:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public handleDragToZoomAgain(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_5c

    :cond_d
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "OplusZoomToFlexibleBaseAnimationState"

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_2e

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_5c

    :cond_2e
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomY:I

    const-string p1, "repost recoverZoom"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    sget p2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WAIT_TO_ZOOM_AGAIN:I

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5c

    :cond_49
    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAgainToZoomY:I

    const-string p1, "post recoverZoom"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    sget p2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WAIT_TO_ZOOM_AGAIN:I

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5c
    :goto_5c
    return-void
.end method

.method public handleMove(II)V
    .registers 3

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    return-void
.end method

.method public handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public handleState(I)V
    .registers 2

    return-void
.end method

.method public handleUp(II)V
    .registers 3

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    return-void
.end method

.method public hideWholeSurface()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initAnimationThread()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mUiMode:I

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->getBackColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDimColor:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "zoom_flexible"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public initialPrepareArea(Z)V
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v1

    const v3, 0x3ed1eb85  # 0.41f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v4, v3

    const v5, 0x3f4f5c29  # 0.81f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v1, v1

    const v5, 0x3f170a3d  # 0.59f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v3, v3

    const v5, 0x3f7ae148  # 0.98f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    const v0, 0x3f1eb852  # 0.62f

    const v1, 0x3ec28f5c  # 0.38f

    const v2, 0x3ef22d0e  # 0.473f

    const v3, 0x3f753f7d  # 0.958f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000  # 0.5f

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    goto :goto_cd

    :cond_81
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {p1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    :goto_cd
    return-void
.end method

.method public isAnimationPropertyLegally(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;)Z
    .registers 2

    if-eqz p1, :cond_e

    iget-object p0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCurrentAnimationRun()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public needStopPhysicsAnimation()Z
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "needStopPhysicsAnimation nowState:"

    const-string v2, " mBeforeUpState:"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " horizontalLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " leftReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    const-string v3, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {v1, v2, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_76

    :pswitch_49  #0x9, 0xa
    goto :goto_73

    :pswitch_4a  #0xd, 0xe
    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_73

    const/16 v0, 0x9

    if-eq p0, v0, :cond_73

    goto :goto_74

    :pswitch_55  #0x4
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastX:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-le v0, v2, :cond_74

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, p0, :cond_73

    goto :goto_74

    :cond_68
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastY:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-le v0, v2, :cond_74

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, p0, :cond_73

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v1, 0x0

    :cond_74
    :goto_74
    :pswitch_74  #0x5, 0x6, 0x7, 0x8, 0xb, 0xc
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x4
        :pswitch_55  #00000004
        :pswitch_74  #00000005
        :pswitch_74  #00000006
        :pswitch_74  #00000007
        :pswitch_74  #00000008
        :pswitch_49  #00000009
        :pswitch_49  #0000000a
        :pswitch_74  #0000000b
        :pswitch_74  #0000000c
        :pswitch_4a  #0000000d
        :pswitch_4a  #0000000e
    .end packed-switch
.end method

.method public prepareAnimationSource()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastVibrateState:I

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getDisplayInfo()V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->initializeZoomAnimationSource()V

    return-void
.end method

.method public removeRecoverZoom()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRecoverZoom:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public resetAll()V
    .registers 3

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    const-string v1, "resetAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastVibrateState:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_35

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_35

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_35
    return-void
.end method

.method public sendStateMessage(I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStateMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDownPosition(II)V
    .registers 3

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownY:I

    return-void
.end method

.method public setState(I)V
    .registers 5

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    const-string v1, "setState:"

    invoke-static {v1, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mState:I

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public startNextAnimation()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public vibrateIfNeed()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_30

    :cond_1e
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastVibrateState:I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLastVibrateState:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->vibrateWidthSpecilEffect(I)V

    :cond_30
    return-void
.end method

.method public vibrateWidthSpecilEffect(I)V
    .registers 7

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    move v4, v2

    :cond_14
    if-eqz v4, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v3, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {v1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    new-instance v1, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {v1}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinearmotorVibrator mLinearmotorVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , effect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-eqz p0, :cond_6e

    if-eqz p1, :cond_6e

    invoke-virtual {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    goto :goto_6e

    :cond_5c
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mVibrator:Landroid/os/Vibrator;

    sget-object p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->VIBRATER_ONCE:[J

    const/4 v1, -0x1

    invoke-static {p1, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    const-string p0, " vibrateWidthSpecilEffect vibrator exception "

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    return-void
.end method

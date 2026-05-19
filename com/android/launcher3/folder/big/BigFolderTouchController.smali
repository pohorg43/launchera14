.class public final Lcom/android/launcher3/folder/big/BigFolderTouchController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBigFolderTouchController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigFolderTouchController.kt\ncom/android/launcher3/folder/big/BigFolderTouchController\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,687:1\n42#2:688\n94#2,14:689\n31#2:703\n94#2,14:704\n1855#3,2:718\n*S KotlinDebug\n*F\n+ 1 BigFolderTouchController.kt\ncom/android/launcher3/folder/big/BigFolderTouchController\n*L\n495#1:688\n495#1:689,14\n500#1:703\n500#1:704,14\n604#1:718,2\n*E\n"
    }
.end annotation


# static fields
.field private static final BIG_FOLDER_OPEN_BY_BLANK_AREA:Ljava/lang/String; = "2"

.field private static final BIG_FOLDER_OPEN_BY_STACK:Ljava/lang/String; = "1"

.field public static final CALLER_DEPTH:I = 0x4

.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

.field private static final FLOAT_FACTOR:I = 0xa

.field private static final FOLDER_PAGE_SNAP_SPEED_DP:F = 0.5f

.field private static final FOLDER_PAGE_SNAP_THRESHOLD_DP:F = 20.0f

.field public static final ICON_PAGE_OVER_SCROLL_DURATION:I = 0x190

.field public static final INVALID_POINT:I = -0x1

.field private static final OVERSCROLL_RIGIDITY:I = 0x3

.field private static final SCROLL_CONTINUE_THRESHOLD:F = 20.0f

.field public static final SNAP_ICON_HALF_PAGE_DURATION:I = 0x226

.field public static final SNAP_ICON_PAGE_DURATION:I = 0x1f4

.field public static final SNAP_PAGE_MIN_DURATION:I = 0x96

.field public static final TAG:Ljava/lang/String; = "BigFolderTouchController"


# instance fields
.field private mActivePoint:I

.field private final mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field private mCanIntercept:Z

.field private mClickOptsForRecentReverse:Ljava/lang/Runnable;

.field private mCurrentPage:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOfAnimApp:I

.field private mIsDrag:Z

.field private mIsOverScroll:Z

.field private final mIsRtl:Z

.field private mLastScrollMount:F

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOverScrollStartX:I

.field private mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

.field private mPageFlingSpeed:F

.field private mPrePage:I

.field private mScrollEndRunnable:Ljava/lang/Runnable;

.field private mScrollStart:Z

.field private mScrollStartPoint:Landroid/graphics/PointF;

.field private mScrollStartX:F

.field private mSnapPageAnimator:Landroid/animation/ValueAnimator;

.field private final mSnapPageThreshold:F

.field private final mSwipeThreshold:F

.field private mTargetPageInAnimation:F

.field private mTemptMount:F

.field private final mUpPoint:Landroid/graphics/PointF;

.field private final mVelocityTracking:Landroid/view/VelocityTracker;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private page:I

.field private touchIconAnim:Lcom/android/launcher3/folder/big/TouchIconAnim;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mUpPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    new-instance v1, Lcom/android/launcher/OplusSpringOverScroller;

    invoke-direct {v1, p1}, Lcom/android/launcher/OplusSpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    new-instance v1, Lcom/android/launcher3/folder/big/TouchIconAnim;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/TouchIconAnim;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->touchIconAnim:Lcom/android/launcher3/folder/big/TouchIconAnim;

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIndexOfAnimApp:I

    new-instance v0, Lcom/android/launcher/guide/side/b;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000  # 20.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageThreshold:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPageFlingSpeed:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSwipeThreshold:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-eqz p2, :cond_7c

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7c
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat$lambda$5(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-object p0
.end method

.method public static final synthetic access$getMScrollStart$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    return p0
.end method

.method public static final synthetic access$getMTargetPageInAnimation$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onClickListener$lambda$0(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/folder/big/BigFolderTouchController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->openFolderByClick$lambda$2(Lcom/android/launcher3/folder/big/BigFolderTouchController;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final checkTouchDownAnim()V
    .registers 1

    return-void
.end method

.method private static final checkTouchDownAnim$lambda$8(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final checkTouchResetAnim(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private static final checkTouchResetAnim$lambda$9(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_d
    return-void
.end method

.method private final clearFloatingIconIfNeed()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    sget-object v2, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v2, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->finish()V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setVisibility(I)V

    :cond_3c
    return-void
.end method

.method private final computeOverScroll(F)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    sub-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz p1, :cond_3a

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    sub-float p1, v0, p1

    float-to-int p1, p1

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    sget-object v2, Lcom/android/launcher3/folder/big/BigFolderTouchController;->Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;->calcRealOverScrollDist(IFI)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    int-to-float v0, p1

    sub-float/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-eqz v2, :cond_32

    int-to-float p1, p1

    add-float v0, p1, v1

    :cond_32
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method private final editState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private final getMNextPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    return p0
.end method

.method private final isKeyBoardEnterPressed(Landroid/graphics/PointF;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    goto :goto_b

    :cond_a
    move-object p0, v0

    :goto_b
    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    if-eqz v1, :cond_12

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    :cond_12
    const/4 p0, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_37

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    move v1, p0

    :goto_27
    if-eqz v1, :cond_37

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_33

    move p1, v2

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    if-eqz p1, :cond_37

    move p0, v2

    :cond_37
    return p0
.end method

.method private static final onClickListener$lambda$0(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "BigFolderTouchController"

    if-nez p1, :cond_15

    const-string/jumbo p0, "windowToken is null, ignore click"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result p1

    if-nez p1, :cond_28

    const-string/jumbo p0, "workspace is switching state, ignore click"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p0, "folder icon isScrolling, ignore click"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inIconsRectArea(FF)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mUpPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, p1

    goto :goto_5d

    :cond_51
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mUpPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inIconsRectArea(FF)I

    move-result v1

    :goto_5d
    if-eq p1, v1, :cond_7d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch cross different icon, ignore click, downIndex ="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", upIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7d
    const/4 v0, -0x2

    if-le p1, v0, :cond_98

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-le p1, v0, :cond_8e

    if-ge p1, v1, :cond_8e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->isClickedSmallIcon(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    return-void

    :cond_8e
    if-ne p1, v1, :cond_93

    const-string p1, "1"

    goto :goto_95

    :cond_93
    const-string p1, "2"

    :goto_95
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->openFolderByClick(Ljava/lang/String;)V

    :cond_98
    return-void
.end method

.method private static final openFolderByClick$lambda$2(Lcom/android/launcher3/folder/big/BigFolderTouchController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_3f

    const-string/jumbo v0, "onClick - "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/statistics/LauncherStatistics;->statOpenBigFolderByDifferentType(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private final resetScroll()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    return-void
.end method

.method private final setMNextPage(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateNextPageStatus(I)V

    :cond_d
    return-void
.end method

.method private final snapToPageWithFloat(FZZ)V
    .registers 12

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    const/4 v0, -0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4a

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :cond_49
    return-void

    :cond_4a
    iget-boolean v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    if-eqz v4, :cond_51

    const/16 v4, 0x190

    goto :goto_72

    :cond_51
    if-eqz p2, :cond_70

    const/16 v4, 0x96

    const/16 v5, 0x12c

    sub-float v6, v0, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v7

    div-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_72

    :cond_70
    const/16 v4, 0x226

    :goto_72
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v0, v5, v2

    aput v3, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_82

    goto :goto_8c

    :cond_82
    if-eqz p2, :cond_87

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    goto :goto_89

    :cond_87
    sget-object p2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    :goto_89
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_8c
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_91

    goto :goto_95

    :cond_91
    int-to-long v0, v4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_95
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_a1

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_a1
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_ad

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_ad
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b9

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;FF)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_b9
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c0
    if-nez p3, :cond_c9

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c9

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_c9
    return-void
.end method

.method private static final snapToPageWithFloat$lambda$5(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_27
    return-void
.end method

.method private final snapToPageWithTouch(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapToPageWithTouch nextPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZZ)V

    return-void
.end method


# virtual methods
.method public final abortScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :cond_10
    return-void
.end method

.method public final cancelScrollAnim()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :cond_1e
    return-void
.end method

.method public final cancelSnapPageAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public final computeScroll(F)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9a

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    sub-float v2, v0, p1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-eqz v3, :cond_f

    add-float v2, v0, p1

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    const/4 v5, 0x1

    if-gez v4, :cond_3d

    move v4, v5

    goto :goto_3e

    :cond_3d
    move v4, v1

    :goto_3e
    iget-boolean v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_44

    goto :goto_47

    :cond_44
    move v7, v3

    move v3, v0

    move v0, v7

    :goto_47
    if-ltz v0, :cond_56

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v4

    if-ge v0, v4, :cond_56

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    :cond_56
    if-ltz v3, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v0

    if-lt v3, v0, :cond_64

    goto :goto_71

    :cond_64
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    iput-boolean v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v0, v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    goto :goto_91

    :cond_71
    :goto_71
    if-gez v3, :cond_74

    goto :goto_88

    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v0

    sub-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    mul-int/2addr v1, v0

    :goto_88
    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->computeOverScroll(F)V

    :goto_91
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v5

    :cond_9a
    return v1
.end method

.method public final getMIsDrag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsDrag:Z

    return p0
.end method

.method public final getMScrollEndRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final inNoSufficedPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z
    .registers 5

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    sget-object p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p1

    rem-int/2addr p0, p1

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1
.end method

.method public final isClickedSmallIcon(I)Z
    .registers 11

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    const/4 v1, 0x0

    const-string v2, "BigFolderTouchController"

    if-nez v0, :cond_160

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_160

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v3

    :goto_24
    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v4, :cond_15a

    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_15a

    :cond_32
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPreviewParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4f
    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    instance-of v7, v6, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v7, :cond_4f

    iget-object v6, v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_4f

    const-string v7, "it.item"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_6c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_159

    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIndexOfAnimApp:I

    const/4 v6, 0x1

    if-ne p1, v5, :cond_8a

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-eqz v5, :cond_8a

    const-string p1, "Reverse recent anim click"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-eqz p1, :cond_87

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_87
    iput-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return v6

    :cond_8a
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cc

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_a6

    :cond_a5
    move-object v5, v3

    :goto_a6
    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v5, v7, v1, v8}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_cc

    const-string p0, "big folder same app onClick zoomWindow "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_c1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_c1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_cc
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v3, v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setParentFolderIcon(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setIndex(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClickedSmallIcon, info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_146

    iget-object p1, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{\n                    in…ageName\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_152

    :cond_146
    iget-object p1, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{\n                    in…ckage()\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_152
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3, v4, p0, p1}, Lcom/android/launcher3/touch/OplusItemClickHandler;->onClickBigFolderSmallIcon(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_159
    return v1

    :cond_15a
    :goto_15a
    const-string p0, "mBigFolderIcon == null || rectArray == null || rectArray.size() == 0"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_160
    :goto_160
    const-string/jumbo p0, "mScrollStart || !LauncherState.NORMAL"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isSnapPageAnimRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)V
    .registers 4

    const/16 v0, 0x42

    if-ne v0, p1, :cond_34

    const/4 p1, 0x0

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_e

    const/4 p1, 0x1

    :cond_e
    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 p2, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, p2

    :goto_1b
    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    if-eqz v0, :cond_22

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/folder/big/BigFolderBackground;

    :cond_22
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_34
    return-void
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    if-ne v1, v2, :cond_59

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    goto :goto_59

    :cond_52
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v0, :cond_59

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollEndAction(Landroid/view/MotionEvent;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_1ed

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_1ed

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mUpPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_40

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inIconsRectArea(FF)I

    move-result v2

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIndexOfAnimApp:I

    if-ne v2, v5, :cond_60

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    if-eqz v2, :cond_60

    invoke-interface {v2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_60

    :cond_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_60

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mUpPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result v2

    if-nez v2, :cond_1be

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v2

    if-eqz v2, :cond_7a

    goto/16 :goto_1be

    :cond_7a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_90

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inSwipeArea(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCanIntercept:Z

    :cond_90
    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCanIntercept:Z

    if-nez v2, :cond_95

    return v1

    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_17e

    if-eq v2, v4, :cond_16d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_ad

    const/4 v0, 0x6

    if-eq v2, v0, :cond_a8

    goto/16 :goto_1bd

    :cond_a8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1bd

    :cond_ad
    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v2, :cond_bb

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    :cond_bb
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1bd

    :cond_c5
    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v3, :cond_ce

    return v1

    :cond_ce
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-nez v6, :cond_15c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result v6

    if-nez v6, :cond_eb

    goto :goto_110

    :cond_eb
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_f9

    move v5, v4

    goto :goto_fa

    :cond_f9
    move v5, v1

    :goto_fa
    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher/OplusPagedViewImpl;->setMBigFolderIntercept(Z)V

    if-eqz v5, :cond_110

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSwipeThreshold:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_110

    move v1, v4

    :cond_110
    :goto_110
    iput-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v1, :cond_15c

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->clearFloatingIconIfNeed()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_12c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_12c

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12c
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_157

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageStart()V

    :cond_157
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    :cond_15c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->computeScroll(F)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    goto :goto_1bd

    :cond_16d
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v0, :cond_175

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollEndAction(Landroid/view/MotionEvent;)V

    move v1, v4

    :cond_175
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1bd

    :cond_17e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_1b7

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41a00000  # 20.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1b7

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollStartAction()V

    move v1, v4

    goto :goto_1ba

    :cond_1b7
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    :goto_1ba
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchDownAnim()V

    :goto_1bd
    return v1

    :cond_1be
    :goto_1be
    const-string/jumbo p1, "onTouchEvent return false, doClosingAnim: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isAnimateClosing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderTouchController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ed
    :goto_1ed
    return v1
.end method

.method public final openFolderByClick(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/android/launcher/model/b;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/model/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    goto :goto_81

    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_81

    const-string/jumbo v1, "onClick - "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BigFolderTouchController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statOpenBigFolderByDifferentType(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public final prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    const-string v0, "clickOpts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareForRecentAnimReverse, appIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIndexOfAnimApp:I

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public final resetRecentReverseOpts()V
    .registers 3

    const-string v0, "BigFolderTouchController"

    const-string/jumbo v1, "resetRecentReverseOpts"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIndexOfAnimApp:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public final scrollEndAction(Landroid/view/MotionEvent;)V
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_b7

    :cond_11
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMNextPage()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageThreshold:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_41

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPageFlingSpeed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3e

    goto :goto_41

    :cond_3e
    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    goto :goto_45

    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMNextPage()I

    move-result v0

    :goto_45
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    goto :goto_6e

    :cond_49
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v2

    if-eq v2, v3, :cond_58

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v0

    goto :goto_6b

    :cond_58
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v2

    if-eq v2, v3, :cond_67

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v0

    goto :goto_6b

    :cond_67
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    :goto_6b
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    :goto_6e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string/jumbo v0, "scrollEndAction: leftPage: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightPage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " speed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BigFolderTouchController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final scrollStartAction()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageStart()V

    :cond_2e
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->setMBigFolderIntercept(Z)V

    return-void
.end method

.method public final setMIsDrag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsDrag:Z

    return-void
.end method

.method public final setMScrollEndRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final snapHalfPage()V
    .registers 4

    const/high16 v0, 0x3f000000  # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZZ)V

    return-void
.end method

.method public final snapPageValid()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public final snapToPage(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapToPage nextPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZZ)V

    return-void
.end method

.class public final Lcom/android/wm/shell/common/split/SplitLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;,
        Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;,
        Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
    }
.end annotation


# static fields
.field private static final FLING_ENTER_DURATION:I = 0x1c2

.field private static final FLING_EXIT_DURATION:I = 0x1c2

.field public static final FLING_RESIZE_DURATION:I = 0xfa

.field private static final FLING_SWITCH_DURATION:I = 0x15e

.field public static final PARALLAX_ALIGN_CENTER:I = 0x2

.field public static final PARALLAX_DISMISSING:I = 0x1

.field public static final PARALLAX_NONE:I


# instance fields
.field private final mBounds1:Landroid/graphics/Rect;

.field private final mBounds2:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private final mDimNonImeSide:Z

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mDividePosition:I

.field private final mDividerBounds:Landroid/graphics/Rect;

.field private mDividerFlingAnimator:Landroid/animation/ValueAnimator;

.field private mDividerInsets:I

.field private mDividerSize:I

.field public mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDividerWindowWidth:I

.field private final mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

.field private mFreezeDividerWindow:Z

.field private final mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

.field private mInitialized:Z

.field private final mInsetsState:Landroid/view/InsetsState;

.field private final mInvisibleBounds:Landroid/graphics/Rect;

.field private mOrientation:I

.field private final mRootBounds:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

.field private final mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field private final mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUiMode:I

.field private final mWinBounds1:Landroid/graphics/Rect;

.field private final mWinBounds2:Landroid/graphics/Rect;

.field private mWinToken1:Landroid/window/WindowContainerToken;

.field private mWinToken2:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget p2, p3, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    iget-object p2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    iget p2, p3, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    iput-object p6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p7, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    new-instance p2, Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p4, p3, p5}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iput-object p8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    const/4 p4, 0x0

    invoke-direct {p1, p0, p2, p4}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ILcom/android/wm/shell/common/split/SplitLayout$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    invoke-direct {p1, p0, p9}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    iget-object p1, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$bool;->config_dimNonImeAttachedSide:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDimNonImeSide:Z

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$snapToTarget$2(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/graphics/Rect;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayoutExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/common/split/SplitLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDimNonImeSide:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/common/split/SplitLayout;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitWindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/DisplayImeController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/common/split/SplitLayout;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/common/split/SplitLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/common/split/SplitLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$flingDividePosition$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$snapToTarget$0()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$flingDividerToCenter$4(I)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$snapToTarget$1()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$moveSurface$6(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$flingDividerToDismiss$3(ZI)V

    return-void
.end method

.method private getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_32

    :cond_11
    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    :goto_32
    return-object p0
.end method

.method private getSmallestWidthDp(Landroid/graphics/Rect;)I
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .registers 16

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v0, :cond_19

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_19
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    xor-int/lit8 v10, v0, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getStableInsets(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x2

    :goto_37
    move v12, p0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    return-object v1
.end method

.method private initDividerPosition(Landroid/graphics/Rect;)V
    .registers 9

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    int-to-float v0, v0

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_12
    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_27

    :cond_21
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_27
    int-to-float v1, v1

    mul-float v2, v1, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    const/4 v3, 0x0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-ne v4, v5, :cond_57

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    move v3, v6

    :cond_57
    const-string v4, "initDividerPosition mDividePosition="

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " snapRatio "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " estimatePosition "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldBounds "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " useMiddleTarget "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitLayout"

    invoke-static {v0, p1, v6}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    return-void
.end method

.method private static isLandscape(Landroid/graphics/Rect;)Z
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private synthetic lambda$flingDividePosition$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDivideBounds(I)V

    return-void
.end method

.method private synthetic lambda$flingDividerToCenter$4(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    return-void
.end method

.method private synthetic lambda$flingDividerToDismiss$3(ZI)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSnappedToDismiss(ZI)V

    return-void
.end method

.method private synthetic lambda$moveSurface$6(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Float;

    invoke-virtual {p10}, Ljava/lang/Float;->floatValue()F

    move-result p10

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr p3, p10

    add-float/2addr p3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr p4, p10

    add-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p5, p10

    add-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p6, p10

    add-float/2addr p6, p2

    float-to-int p2, p6

    const/4 p6, 0x0

    cmpl-float v0, p7, p6

    if-nez v0, :cond_37

    cmpl-float p6, p8, p6

    if-nez p6, :cond_37

    invoke-virtual {p9, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p9, p1, p5, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_54

    :cond_37
    mul-float/2addr p7, p10

    float-to-int p6, p7

    mul-float/2addr p10, p8

    float-to-int p7, p10

    int-to-float p8, p6

    add-float/2addr p3, p8

    int-to-float p8, p7

    add-float/2addr p4, p8

    invoke-virtual {p9, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p5, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    neg-int p3, p6

    neg-int p4, p7

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p9, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_54
    invoke-virtual {p9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$snapToTarget$0()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSnappedToDismiss(ZI)V

    return-void
.end method

.method private synthetic lambda$snapToTarget$1()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSnappedToDismiss(ZI)V

    return-void
.end method

.method private synthetic lambda$snapToTarget$2(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 3

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->notifySplitRatioChange()V

    return-void
.end method

.method private moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;
    .registers 20

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/wm/shell/common/split/c;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/c;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v11

    nop

    :array_4a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateBounds(I)V
    .registers 8

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private updateBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v1, v2

    iput v1, p4, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v1, p1

    iput v1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_46

    :cond_2f
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v1, v2

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v1, p1

    iput v1, p3, Landroid/graphics/Rect;->top:I

    :goto_46
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBounds after, position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bounds1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " bounds2 "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " dividerBounds "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SplitLayout"

    invoke-static {p3, p2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p5, :cond_84

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->applyDividerPosition(IZ)V

    :cond_84
    return-void
.end method

.method private updateDividerConfig(Landroid/content/Context;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1d
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2c
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3b
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDividerSize(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    mul-int/2addr v0, v3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    return-void
.end method

.method private updateInvisibleRect()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    goto :goto_19

    :cond_15
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_19
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2a

    :cond_24
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x2

    :goto_2a
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_47

    :cond_43
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    :goto_47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public applyLayoutOffsetTarget(Landroid/window/WindowContainerTransaction;IILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    iget-object p2, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    iget-object p2, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, p3, p3}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_56

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v1, p4, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p4, p4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget p3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, p0, p3, p2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    :goto_56
    return-void
.end method

.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x7fffffff

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_1c
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, p2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, p3, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_6a

    return-void

    :cond_6a
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->adjustDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    if-eqz p6, :cond_76

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->adjustRootSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    :cond_76
    return-void
.end method

.method public applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p2, 0x0

    goto :goto_36

    :cond_18
    :goto_18
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    move p2, v1

    :goto_36
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4d

    :cond_4b
    move v1, p2

    goto :goto_6a

    :cond_4d
    :goto_4d
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    :goto_6a
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "bounds1="

    invoke-static {p2, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dividerBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bounds2="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    return-object p0
.end method

.method public flingDividePosition(IIILjava/lang/Runnable;)V
    .registers 7
    .param p4  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_16

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    if-eqz p4, :cond_10

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_10
    const/16 p0, 0x34

    invoke-static {p0}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->endTracing(I)V

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v0

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/guide/f;

    invoke-direct {p2, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$1;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/common/split/SplitLayout$1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public flingDividerToCenter()V
    .registers 2

    const/16 v0, 0x1c2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter(I)V

    return-void
.end method

.method public flingDividerToCenter(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v1

    new-instance v2, Landroidx/core/content/res/c;

    invoke-direct {v2, p0, v0}, Landroidx/core/content/res/c;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    return-void
.end method

.method public flingDividerToDismiss(ZI)V
    .registers 7

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v1

    const/16 v2, 0x1c2

    new-instance v3, Lcom/android/quickstep/q;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/quickstep/q;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    return-void
.end method

.method public forceHideDividerMenuIfNeeded()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->forceHideDividerMenuIfNeeded()V

    return-void
.end method

.method public forceUpdateLayout()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBounds1()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getBounds1(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBounds2()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getBounds2(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDividePosition()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    return p0
.end method

.method public getDividerBounds()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDividerBounds(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDividerCurrentMotionPosition()I
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDividerCurrentMotionPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result p0

    return p0
.end method

.method public getDividerLeash()Landroid/view/SurfaceControl;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getDividerPositionAsFraction()F
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_23

    :cond_16
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    :goto_23
    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    return-object p0
.end method

.method public getImeTargetPosition()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->access$2000(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)I

    move-result p0

    return p0
.end method

.method public getInvisibleBounds(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRefBounds1()Landroid/graphics/Rect;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getRefBounds1(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getRefBounds2()Landroid/graphics/Rect;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getRefBounds2(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getRefDividerBounds()Landroid/graphics/Rect;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getRefDividerBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getRootBounds()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getRootBounds(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getYOffsetForIme()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->access$1900(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)I

    move-result p0

    return p0
.end method

.method public hasInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    return p0
.end method

.method public hideImeDimLayerWhenRemoveImeSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->hideImeDimLayerWhenRemoveImeSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    const/4 p2, 0x0

    const-string v0, "hideImeDimLayerWhenRemoveImeSurface"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(ZZLjava/lang/String;)V

    :cond_12
    return-void
.end method

.method public init()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->onInsetsChanged(Landroid/view/InsetsState;)V

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->insetsChanged(Landroid/view/InsetsState;)V

    :cond_b
    return-void
.end method

.method public isDensityChanged(I)Z
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    if-eq p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isImeShown()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->access$2100(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)Z

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTappedDivider()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onDoubleTappedDivider()V

    return-void
.end method

.method public onDraggingCancelled()V
    .registers 1

    const/16 p0, 0x34

    invoke-static {p0}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->cancelTracing(I)V

    return-void
.end method

.method public onSingleTappedDivider()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSingleTappedDivider()V

    return-void
.end method

.method public onStartDragging()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->beginTracing(ILandroid/content/Context;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method public recreateSnapAlgorithm()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayImeController;->removePositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    return-void
.end method

.method public resetDividerPosition()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    const-string/jumbo v0, "resetDividerPosition mDividePosition="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitLayout"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public rotateTo(I)V
    .registers 6

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/DisplayImeController;->setRotating(ZI)V

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_32
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->notifySplitRatioChange()V

    return-void
.end method

.method public setDividePosition(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    return-void
.end method

.method public setDividePosition(IZ)V
    .registers 5

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    const-string/jumbo p1, "setDividePosition mDividePosition="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitLayout"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    if-eqz p2, :cond_24

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_24
    return-void
.end method

.method public setDivideRatio(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_17
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    return-void
.end method

.method public setDividerAtBorder(Z)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_13

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    return-void
.end method

.method public setDividerInteractive(ZZLjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(ZZLjava/lang/String;)V

    return-void
.end method

.method public setDividerViewForceHidden(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->getDividerView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getExtImpl()Lcom/android/wm/shell/common/split/DividerViewExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerViewExt;->setForceHidden(Z)V

    return-void
.end method

.method public setFreezeDividerWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    return-void
.end method

.method public snapToDismissTarget(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mExtImpl:Lcom/android/wm/shell/common/split/SplitLayoutExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->snapToDismissTarget(Z)V

    return-void
.end method

.method public snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 6

    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    const/16 v2, 0xfa

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    goto :goto_2a

    :cond_15
    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    goto :goto_2a

    :cond_20
    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v0, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    :goto_2a
    return-void
.end method

.method public splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Ljava/util/function/Consumer;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v0, :cond_11

    iget v1, v8, Landroid/graphics/Rect;->left:I

    goto :goto_12

    :cond_11
    move v1, v9

    :goto_12
    if-eqz v0, :cond_16

    move v2, v9

    goto :goto_18

    :cond_16
    iget v2, v8, Landroid/graphics/Rect;->top:I

    :goto_18
    if-eqz v0, :cond_1d

    iget v3, v8, Landroid/graphics/Rect;->right:I

    goto :goto_1e

    :cond_1d
    move v3, v9

    :goto_1e
    if-eqz v0, :cond_22

    move v4, v9

    goto :goto_24

    :cond_22
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    :goto_24
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_32

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_38

    :cond_32
    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_38
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v10, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v10

    move-object v2, v11

    move-object v3, v6

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v8, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v5, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v13, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v4, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    move-object v0, p0

    move-object/from16 v2, p3

    move-object v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v13, v2, v9

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout$2;

    move-object/from16 v2, p4

    invoke-direct {v0, p0, v10, v2, v8}, Lcom/android/wm/shell/common/split/SplitLayout$2;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public update(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 8

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    if-ne v5, v3, :cond_38

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    if-ne v5, v4, :cond_38

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    if-ne v5, v2, :cond_38

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    if-ne v5, v0, :cond_2a

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    :cond_2a
    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    if-eq v5, v0, :cond_38

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    :cond_36
    const/4 p0, 0x0

    return p0

    :cond_38
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v5, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    iput v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    iput v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDimLayerForImeWhenKeyguardVisibilityChanged(ZLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->updateDimLayerForImeWhenKeyguardVisibilityChanged(ZLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public updateDivideBounds(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p1, p0, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;II)V

    return-void
.end method

.method public updateImeTargetPosition()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->updateImeTargetPosition()V

    return-void
.end method

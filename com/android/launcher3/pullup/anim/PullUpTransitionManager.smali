.class public final Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPullUpTransitionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullUpTransitionManager.kt\ncom/android/launcher3/pullup/anim/PullUpTransitionManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,205:1\n1282#2,2:206\n*S KotlinDebug\n*F\n+ 1 PullUpTransitionManager.kt\ncom/android/launcher3/pullup/anim/PullUpTransitionManager\n*L\n160#1:206,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$Companion;

.field private static LAUNCH_TIMEOUT:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PullUpTransitionManager"

.field private static final TOGGLE_BAR_OPEN_ANIMATION_DURATION:J = 0x11fL


# instance fields
.field private mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

.field private mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOnTimeout:Ljava/lang/Runnable;

.field private mPullUpView:Landroid/view/View;

.field private mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->Companion:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$Companion;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/16 v0, 0x12c

    goto :goto_19

    :cond_17
    const-wide/16 v0, 0x0

    :goto_19
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->LAUNCH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mOnTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mOnTimeout$lambda$0(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    return-void
.end method

.method public static final synthetic access$getMGhostViewController$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher3/pullup/anim/GhostViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getOpeningWindowAnimators(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeTimeout(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->removeTimeout()V

    return-void
.end method

.method public static final synthetic access$resetContentView(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->resetContentView(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getOpeningWindowAnimators$lambda$3(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private final getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 10

    new-instance v0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;-><init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v7

    const-wide/16 v3, 0x11f

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    new-instance v1, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method private final getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .registers 16

    iget-object p3, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;

    move-result-object p3

    new-instance v2, Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget p5, p3, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {v2, p4, p5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getOpeningWindowAnimators, startRect = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", endRect = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PullUpTransitionManager"

    invoke-static {p4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    const/4 v1, 0x0

    const-wide/16 v5, 0x11f

    move-object v0, p3

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;J)V

    new-instance v6, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v6, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance p1, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getOpeningWindowAnimators$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getOpeningWindowAnimators$1;-><init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher/togglebar/a;

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/togglebar/a;-><init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    invoke-virtual {p3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static final getOpeningWindowAnimators$lambda$3(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 15

    const-string/jumbo p7, "this$0"

    invoke-static {p0, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$appTargets"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$surfaceApplier"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$matrix"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$mCropRect"

    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$endRectF"

    invoke-static {p5, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p7, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p7}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p8}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationProgress(F)V

    :cond_2b
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    const/4 v3, 0x1

    if-ge v2, v0, :cond_40

    aget-object v4, p1, v2

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_39

    move v5, v3

    goto :goto_3a

    :cond_39
    move v5, v1

    :goto_3a
    if-eqz v5, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_40
    const/4 v4, 0x0

    :goto_41
    if-eqz v4, :cond_85

    iget-object p1, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p7, p1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    const/4 v0, 0x0

    iget p6, p6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, p6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p6

    float-to-int p6, p6

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p5

    float-to-int p5, p5

    invoke-virtual {p4, v1, v1, p6, p5}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 p5, 0x3f800000  # 1.0f

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    iget p3, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    cmpg-float p3, p8, p5

    if-nez p3, :cond_76

    move p3, v3

    goto :goto_77

    :cond_76
    move p3, v1

    :goto_77
    if-nez p3, :cond_81

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p0

    if-eqz p0, :cond_82

    :cond_81
    move v1, v3

    :cond_82
    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setVisibility(Z)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_85
    invoke-virtual {p2, p7}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private final getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;
    .registers 6

    new-instance p0, Landroid/graphics/Rect;

    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "getWindowTargetBounds: isInSplitScreenMode:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullUpTransitionManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p2

    if-eqz p2, :cond_4f

    array-length p2, p1

    :goto_2d
    if-ge v2, p2, :cond_4f

    aget-object v0, p1, v2

    iget v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v1, :cond_4c

    iget-object p1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_42

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4b

    :cond_42
    iget-object p1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_4b
    return-object p0

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4f
    return-object p0
.end method

.method private static final mOnTimeout$lambda$0(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->onAnimationTimedOut()V

    return-void
.end method

.method private final onAnimationTimedOut()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationCancelled()V

    :cond_7
    return-void
.end method

.method private final removeTimeout()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mPullUpView:Landroid/view/View;

    if-nez v0, :cond_c

    const-string v0, "PullUpTransitionManager"

    const-string/jumbo v1, "pull up view is null, can un post time out"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mPullUpView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method private final resetContentView(Lcom/android/launcher/Launcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationEnd()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public final getActivityLaunchOptionsAsBundle(Landroid/view/View;Lcom/android/launcher3/pullup/anim/GhostViewController;)Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mPullUpView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p1

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final postTimeout()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mPullUpView:Landroid/view/View;

    if-nez v0, :cond_c

    const-string v0, "PullUpTransitionManager"

    const-string/jumbo v1, "pull up view is null, can post time out"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mPullUpView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->mOnTimeout:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->LAUNCH_TIMEOUT:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

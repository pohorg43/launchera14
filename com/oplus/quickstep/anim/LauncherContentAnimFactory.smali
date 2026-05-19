.class public final Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$Companion;,
        Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherContentAnimFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherContentAnimFactory.kt\ncom/oplus/quickstep/anim/LauncherContentAnimFactory\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,418:1\n94#2,14:419\n94#2,14:433\n94#2,14:447\n*S KotlinDebug\n*F\n+ 1 LauncherContentAnimFactory.kt\ncom/oplus/quickstep/anim/LauncherContentAnimFactory\n*L\n214#1:419,14\n298#1:433,14\n306#1:447,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$Companion;

.field private static final MIN_SCALE:F = 0.9f

.field private static final SCRIM_FADE_ANIM_DURATION:J = 0x15eL

.field private static final TAG:Ljava/lang/String; = "LauncherContentAnimFactory"


# instance fields
.field private advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

.field private mContentAnimProgress:F

.field private mDepthAnim:Landroid/animation/ValueAnimator;

.field private mDepthAnimEnable:Z

.field private mDepthAnimProgress:F

.field private mInterruptByOtherOpenOrClose:Z

.field private mInterruptScene:Z

.field private mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private mLauncherContentParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

.field private mLauncherViewAnim:Landroid/animation/ValueAnimator;

.field private mOnContentChangeListener:Ljava/lang/Runnable;

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mSwipeUpToHomeAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->Companion:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance p1, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-direct {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherContentParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    sget-object p1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnimEnable:Z

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_28

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createDepthAnim$lambda$8(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMInterruptByOtherOpenOrClose$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method public static final synthetic access$getMSwipeUpToHomeAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Lcom/android/quickstep/util/OplusRectFSpringAnim;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mSwipeUpToHomeAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-object p0
.end method

.method public static final synthetic access$resetDepth(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->resetDepth(Z)V

    return-void
.end method

.method public static final synthetic access$resetViews(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->resetViews(Z)V

    return-void
.end method

.method public static final synthetic access$setAdvanceFadeDragLayerAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static final synthetic access$setMDepthAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setMInterruptByOtherOpenOrClose$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    return-void
.end method

.method public static final synthetic access$setMLauncherViewAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherViewAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setMOnContentChangeListener$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mOnContentChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setMSwipeUpToHomeAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mSwipeUpToHomeAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;ZLandroid/animation/ValueAnimator;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createContentAnim$lambda$3(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final createContentAnim$lambda$3(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;ZLandroid/animation/ValueAnimator;)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$contentAnimParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    iput p7, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mContentAnimProgress:F

    const/4 v0, 0x0

    const v1, 0x3f666666  # 0.9f

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    invoke-virtual {p3}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result p1

    invoke-static {p7, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p3}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result p3

    invoke-static {p7, p3, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    goto :goto_53

    :cond_3d
    if-eqz p2, :cond_44

    invoke-static {p7, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    goto :goto_48

    :cond_44
    invoke-static {p7, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    :goto_48
    if-eqz p2, :cond_4f

    invoke-static {p7, v2, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    goto :goto_53

    :cond_4f
    invoke-static {p7, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    :goto_53
    iget-object p7, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherContentParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p7, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    invoke-virtual {p7, p3}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    const/4 p7, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_88

    iget-object p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-nez p4, :cond_87

    iget-object p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-eqz p4, :cond_74

    goto :goto_87

    :cond_74
    new-array p4, p7, [Landroid/view/View;

    aput-object p5, p4, v0

    invoke-direct {p0, p1, p4}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewScale(F[Landroid/view/View;)V

    if-eqz p6, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, p3

    :goto_7f
    new-array p1, p7, [Landroid/view/View;

    aput-object p5, p1, v0

    invoke-direct {p0, v2, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewAlpha(F[Landroid/view/View;)V

    goto :goto_bb

    :cond_87
    :goto_87
    return-void

    :cond_88
    const/4 p4, 0x2

    new-array p5, p4, [Landroid/view/View;

    iget-object p6, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p6

    aput-object p6, p5, v0

    iget-object p6, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p6

    aput-object p6, p5, p7

    invoke-direct {p0, p1, p5}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewScale(F[Landroid/view/View;)V

    new-array p1, p4, [Landroid/view/View;

    iget-object p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p4

    aput-object p4, p1, v0

    iget-object p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p4

    aput-object p4, p1, p7

    invoke-direct {p0, p3, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewAlpha(F[Landroid/view/View;)V

    :goto_bb
    if-eqz p2, :cond_c4

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mOnContentChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_c4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_c4
    return-void
.end method

.method private static final createDepthAnim$lambda$8(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    iput p8, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnimProgress:F

    invoke-static {p8, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p8, p3, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-static {p8, p5, p6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    iget-object p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherContentParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p4, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    invoke-virtual {p4, p2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    iget-boolean p4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnimEnable:Z

    if-eqz p4, :cond_38

    invoke-virtual {p7, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_38
    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1, p2}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {p7, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0, p3}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {p7, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method private final isOverviewShowing()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    if-ne v0, v2, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecentMotionPaused()Z

    move-result v0

    if-ne v0, v2, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentAnimateDragging()Z

    move-result p0

    if-ne p0, v2, :cond_40

    move p0, v2

    goto :goto_41

    :cond_40
    move p0, v1

    :goto_41
    if-eqz p0, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    return v1
.end method

.method private final resetDepth(Z)V
    .registers 5

    const-string v0, "resetDepth, isOpeningApp = "

    const-string v1, " isInterrupt="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " launcherState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    if-eqz p1, :cond_60

    :cond_4d
    iget-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnimEnable:Z

    if-eqz p1, :cond_54

    invoke-virtual {v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_54
    invoke-virtual {v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_60
    invoke-virtual {v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    :cond_63
    return-void
.end method

.method private final resetViews(Z)V
    .registers 7

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->isOverviewShowing()Z

    move-result v0

    const-string v1, "resetViews.animDragLayer="

    const-string v2, ", isOverviewShowing="

    const-string v3, "LauncherContentAnimFactory"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3b

    if-nez v0, :cond_6e

    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-direct {p0, v3, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewScale(F[Landroid/view/View;)V

    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-direct {p0, v3, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewAlpha(F[Landroid/view/View;)V

    goto :goto_6e

    :cond_3b
    const/4 p1, 0x2

    new-array v0, p1, [Landroid/view/View;

    iget-object v4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewScale(F[Landroid/view/View;)V

    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-direct {p0, v3, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setViewAlpha(F[Landroid/view/View;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private final varargs setViewAlpha(F[Landroid/view/View;)V
    .registers 5

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_f

    aget-object v1, p2, v0

    if-nez v1, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method private final varargs setViewScale(F[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p2, v0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method


# virtual methods
.method public final advanceHideDragLayerIfNeed(Landroid/app/Activity;)Landroid/animation/ObjectAnimator;
    .registers 8

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    const/4 v3, 0x0

    if-eqz v0, :cond_18

    return-object v3

    :cond_18
    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnimType()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-object v3

    :cond_27
    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_2e

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_2f

    :cond_2e
    move-object p1, v3

    :goto_2f
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_40

    move v0, v1

    goto :goto_41

    :cond_40
    move v0, v2

    :goto_41
    if-eqz v0, :cond_44

    return-object v3

    :cond_44
    const-string v0, "QuickStep"

    const-string v3, "LauncherContentAnimFactory"

    const-string v5, "advanceHideDragLayerIfNeed: Start hiding DragLayer."

    invoke-static {v0, v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->ALPHA:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v4, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v0, "ofFloat(dragLayer, Oplus…ncherAnimUtils.ALPHA, 0f)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-object p1

    :cond_78
    return-object v3
.end method

.method public final cancelLauncherContentAnim()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherViewAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-ne v3, v1, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    iget-object v4, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-ne v4, v1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelLauncherContentAnim, isViewAnimating = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDepthAnimating = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LauncherContentAnimFactory"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherViewAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4f
    if-eqz v3, :cond_58

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_58
    if-eqz v1, :cond_61

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_61
    return-void
.end method

.method public final createContentAnim(Z)Landroid/animation/ValueAnimator;
    .registers 17

    move-object v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    const/high16 v3, 0x3f800000  # 1.0f

    const-string v4, "LauncherContentAnimFactory"

    if-eqz v0, :cond_2f

    if-nez v9, :cond_2f

    const-string v0, "createContentAnim advanceHideDragLayerIfNeed cancel"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_26
    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :cond_2f
    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_80

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelGestureToRecentAnimation()V

    :cond_42
    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v7, v0, Lcom/android/launcher/Launcher;

    if-eqz v7, :cond_4b

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_4c

    :cond_4b
    move-object v0, v6

    :goto_4c
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v0

    goto :goto_5a

    :cond_59
    move-object v0, v6

    :goto_5a
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/Scrim;->getScrimProgress()F

    move-result v7

    cmpg-float v7, v7, v5

    if-nez v7, :cond_66

    move v7, v1

    goto :goto_67

    :cond_66
    move v7, v2

    :goto_67
    if-nez v7, :cond_80

    sget-object v7, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    new-array v10, v1, [F

    aput v5, v10, v2

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_80

    const-wide/16 v10, 0x15e

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_80
    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v7

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v10, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    iget-object v1, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string v3, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_a0
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v10

    const v11, 0x3f666666  # 0.9f

    const-string v12, "dragLayer"

    if-eqz v10, :cond_b7

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v7, v9, v11, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_b7
    sget-object v10, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v10}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v10

    if-eqz v10, :cond_de

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_de

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v7, v9, v11, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_de
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v10, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_10a

    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnimType()Ljava/lang/Class;

    move-result-object v0

    const-class v10, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const v10, 0x7ffeff

    invoke-static {v0, v10}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_108

    goto :goto_10a

    :cond_108
    move v10, v2

    goto :goto_10b

    :cond_10a
    :goto_10a
    move v10, v1

    :goto_10b
    iget-boolean v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptScene:Z

    if-eqz v0, :cond_114

    int-to-float v0, v1

    iget v5, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mContentAnimProgress:F

    sub-float v5, v0, v5

    :cond_114
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v5, v0, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchContentAnimDuration(Z)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v3

    sget-object v5, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v3, v5, :cond_150

    sget-object v5, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v3, v5, :cond_150

    sget-object v5, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v3, v5, :cond_150

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiLaunchForceFinish()Z

    move-result v0

    if-eqz v0, :cond_14e

    goto :goto_150

    :cond_14e
    move v5, v2

    goto :goto_151

    :cond_150
    :goto_150
    move v5, v1

    :goto_151
    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getMCurrentContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object v12

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_160

    move-object v6, v0

    check-cast v6, Lcom/android/launcher/Launcher;

    :cond_160
    if-eqz v6, :cond_16e

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    if-eqz v0, :cond_16e

    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v0

    move v13, v0

    goto :goto_16f

    :cond_16e
    move v13, v2

    :goto_16f
    iput-boolean v2, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    const-string v0, "createContentAnim, isOpeningApp = "

    const-string v1, ", animDragLayer="

    const-string v2, ", mInterruptScene="

    invoke-static {v0, v9, v1, v10, v2}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptScene:Z

    const-string v2, ", isMultiInterruptScene="

    const-string v6, ", currentAnimState="

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentAnimParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/oplus/quickstep/anim/b;

    move-object v0, v14

    move-object v1, p0

    move v2, v5

    move/from16 v3, p1

    move-object v4, v12

    move v5, v10

    move-object v6, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/anim/b;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;Z)V

    invoke-virtual {v11, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "animator"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;

    invoke-direct {v0, v9, p0, v10}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;-><init>(ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v10, :cond_1bd

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    goto :goto_1c1

    :cond_1bd
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    :goto_1c1
    const-string v1, "if (animDragLayer) mLaun… else mLauncher.workspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createAnimListenerForLayerType(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v11, v8, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherViewAnim:Landroid/animation/ValueAnimator;

    return-object v11
.end method

.method public final createDepthAnim(ZLandroid/animation/AnimatorSet;)Landroid/animation/ValueAnimator;
    .registers 19

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v0, "animatorSet"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1cc

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v2

    if-nez v2, :cond_1cc

    iget-object v2, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v2

    if-nez v2, :cond_1cc

    sget-object v2, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->isShowAppEdit()Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_4b

    goto/16 :goto_1cc

    :cond_4b
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6c

    if-eqz v10, :cond_61

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const-string v4, "app_launch"

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_6c

    :cond_61
    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const-string v4, "app_exit"

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_6c
    :goto_6c
    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v8

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_7b

    goto :goto_7c

    :cond_7b
    move v2, v3

    :goto_7c
    if-eqz v2, :cond_81

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_93

    :cond_81
    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v4, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    :goto_93
    if-eqz v2, :cond_98

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_aa

    :cond_98
    iget-object v2, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-object v4, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v2

    :goto_aa
    if-eqz v10, :cond_b1

    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentDepth()F

    move-result v4

    goto :goto_b3

    :cond_b1
    const/high16 v4, 0x3f800000  # 1.0f

    :goto_b3
    if-eqz v10, :cond_b7

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_b7
    move v5, v0

    if-eqz v10, :cond_bf

    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result v0

    goto :goto_c1

    :cond_bf
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_c1
    move v6, v0

    if-eqz v10, :cond_c8

    const/high16 v0, 0x3f800000  # 1.0f

    move v7, v0

    goto :goto_c9

    :cond_c8
    move v7, v2

    :goto_c9
    if-eqz v10, :cond_d0

    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentIconBlur()F

    move-result v0

    goto :goto_d2

    :cond_d0
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_d2
    move v12, v0

    if-eqz v10, :cond_d8

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_d9

    :cond_d8
    const/4 v0, 0x0

    :goto_d9
    move v13, v0

    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_e3

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v3

    :cond_f0
    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_f9

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_fa

    :cond_f9
    const/4 v0, 0x0

    :goto_fa
    invoke-static {v0, v10}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchDepthAnimDuration(Lcom/android/launcher/Launcher;Z)J

    move-result-wide v14

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_151

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDepthAnim, isOpeningApp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startDepth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endDepth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startBlur = "

    const-string v1, ", endBlur = "

    invoke-static {v0, v5, v2, v6, v1}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", animDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportIconBlur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IconBlur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_151
    cmpg-float v0, v4, v5

    if-nez v0, :cond_157

    const/4 v0, 0x1

    goto :goto_158

    :cond_157
    const/4 v0, 0x0

    :goto_158
    if-eqz v0, :cond_165

    cmpg-float v0, v6, v7

    if-nez v0, :cond_160

    const/4 v0, 0x1

    goto :goto_161

    :cond_160
    const/4 v0, 0x0

    :goto_161
    if-eqz v0, :cond_165

    const/4 v0, 0x0

    return-object v0

    :cond_165
    iget-object v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_16f

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_170

    :cond_16f
    const/4 v1, 0x0

    :goto_170
    if-eqz v1, :cond_17b

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    if-eqz v0, :cond_17b

    invoke-virtual {v0, v10}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIsOpeningIconBlur(Z)V

    :cond_17b
    iget-boolean v0, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptScene:Z

    if-eqz v0, :cond_185

    const/4 v0, 0x1

    int-to-float v1, v0

    iget v2, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnimProgress:F

    sub-float/2addr v1, v2

    goto :goto_187

    :cond_185
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_187
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDepthInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/oplus/quickstep/anim/a;

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v4

    move-object v15, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/oplus/quickstep/anim/a;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "animator"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;

    invoke-direct {v0, v10, v9, v10, v9}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;-><init>(ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$2;

    invoke-direct {v0, v9}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$2;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v15, v9, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mDepthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v15

    :cond_1cc
    :goto_1cc
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mLauncherContentParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object p0
.end method

.method public final setInterruptByOtherOpenOrClose(Z)V
    .registers 4

    const-string v0, "setInterruptByOtherOpenOrClose, "

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptByOtherOpenOrClose:Z

    return-void
.end method

.method public final setInterruptScene(Z)V
    .registers 4

    const-string v0, "setInterruptScene, "

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mInterruptScene:Z

    return-void
.end method

.method public final setOnContentChangeListener(Ljava/lang/Runnable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnContentChangeListener: runnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mOnContentChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final setSwipeToHomeAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->mSwipeUpToHomeAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method

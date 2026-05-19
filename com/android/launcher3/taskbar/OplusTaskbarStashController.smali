.class public final Lcom/android/launcher3/taskbar/OplusTaskbarStashController;
.super Lcom/android/launcher3/taskbar/TaskbarStashController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarStashController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarStashController.kt\ncom/android/launcher3/taskbar/OplusTaskbarStashController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,611:1\n4098#2,11:612\n1855#3,2:623\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarStashController.kt\ncom/android/launcher3/taskbar/OplusTaskbarStashController\n*L\n599#1:612,11\n599#1:623,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

.field private static final STASH_DELAY_TIME:J = 0x17cL

.field private static final TASKBAR_HINT_SCALE:F = 0.9f

.field public static final TASKBAR_MANUAL_STASH_DURATION:J = 0x30fL

.field private static final TASKBAR_MANUAL_STASH_SCALE_UP_DURATION:J = 0x154L

.field private static final TASKBAR_MANUAL_STASH_SCALE_UP_FRACTION:D = 0.4342273307790549

.field private static final TASKBAR_MANUAL_STASH_TRANS_DELAY:J = 0x14dL

.field private static final TASKBAR_STASH_FALSE_DELAY:J = 0x15eL

.field private static final TASKBAR_STASH_HINT_START_DELAY:J = 0x64L

.field public static final TASKBAR_STASH_TRANS_DURATION:J = 0x1c2L

.field private static final UNSTASH_DELAY_TIME:J = 0x32L

.field private static mStashedInSpecialPage:Z


# instance fields
.field private final mContentHeightNon:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideTaskbarInZenModeAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mOldIsStashedInApp:Z

.field private final mStashTask:Ljava/lang/Runnable;

.field private mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

.field private mUnStashHeightFollowDensity:I

.field private final mZenModeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeMonitor:Lcom/android/launcher3/taskbar/ZenModeMonitor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mOldIsStashedInApp:Z

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "activity.mainThreadHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/folder/t;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mStashTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeMonitor:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    new-instance v0, Lcom/android/launcher/guide/side/e;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeListener:Ljava/util/function/Consumer;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_FLOAT_ABILITY()Z

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/Context;Z)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    return-void
.end method

.method public static final synthetic access$getMHandler$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMStashTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mStashTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMStashedInSpecialPage$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mStashedInSpecialPage:Z

    return v0
.end method

.method public static final synthetic access$setMStashedInSpecialPage$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mStashedInSpecialPage:Z

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeListener$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mStashTask$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)V

    return-void
.end method

.method public static final getTaskbarManualStashDuration(Z)J
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->getTaskbarManualStashDuration(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getTaskbarStashStartDelay(ZIJ)J
    .registers 8

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isForbidDelayForStash()Z

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    const/16 v0, 0x40

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    if-nez p1, :cond_25

    if-nez p0, :cond_25

    if-nez v1, :cond_25

    if-nez p2, :cond_25

    const-wide/16 p3, 0x15e

    :cond_25
    return-wide p3
.end method

.method public static final isStashedInSpecialPage()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->isStashedInSpecialPage()Z

    move-result v0

    return v0
.end method

.method private static final mStashTask$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onIsStashedChanged(Z)V

    return-void
.end method

.method private static final mZenModeListener$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->onZenModeChange(Z)V

    return-void
.end method

.method public static final onFoldChange(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onFoldChange(Z)V

    return-void
.end method

.method public static final onTaskbarHidden(ZZ)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onTaskbarHidden(ZZ)V

    return-void
.end method

.method private final onZenModeChange(Z)V
    .registers 4

    const-string/jumbo v0, "onZenModeChange inZenMode: "

    const-string v1, "TaskbarStashController"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_e
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mHideTaskbarInZenModeAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateAndApplyState(IZ)V

    return-void
.end method

.method public static final setStashedInSpecialPage(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->setStashedInSpecialPage(Z)V

    return-void
.end method

.method public static final setStashedInSpecialPage(ZJ)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->setStashedInSpecialPage(ZJ)V

    return-void
.end method

.method public static final updateStateFlagForSpecialPage(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->updateStateFlagForSpecialPage(Z)V

    return-void
.end method


# virtual methods
.method public createAnimToIsStashed(ZJJZI)V
    .registers 24

    move-object/from16 v2, p0

    move-wide/from16 v0, p2

    move/from16 v3, p7

    iget-object v4, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_10
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isIconAlignmentAnimating()Z

    move-result v5

    if-ne v5, v7, :cond_24

    move v5, v7

    goto :goto_25

    :cond_24
    move v5, v6

    :goto_25
    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "createAnimToIsStashed isStashed: "

    aput-object v9, v8, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, ", duration: "

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const/4 v9, 0x4

    const-string v12, ", startDelay: "

    aput-object v12, v8, v9

    const/4 v9, 0x5

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x6

    const-string v12, ", animateBg: "

    aput-object v12, v8, v9

    const/4 v9, 0x7

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v8, v9

    const/16 v9, 0x8

    const-string v12, ", changedFlags: "

    aput-object v12, v8, v9

    const/16 v9, 0x9

    invoke-static/range {p7 .. p7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getStateString(changedFlags)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v8, v9

    const/16 v9, 0xa

    const-string v12, ", mState: "

    aput-object v12, v8, v9

    const/16 v9, 0xb

    iget v12, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-static {v12}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getStateString(mState)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v8, v9

    const/16 v9, 0xc

    const-string v12, ", isIconAlignmentAnimating: "

    aput-object v12, v8, v9

    const/16 v9, 0xd

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v9

    const-string v5, "TaskbarStashController"

    invoke-static {v5, v8}, Lcom/android/common/debug/LogUtils;->dEx(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v3, v10}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v9

    if-eqz v4, :cond_a7

    const v12, 0x10000002

    invoke-virtual {v4, v12}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v12

    goto :goto_a8

    :cond_a7
    move v12, v6

    :goto_a8
    const/16 v13, 0x40

    invoke-virtual {v2, v13}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v13

    if-eqz v13, :cond_b8

    invoke-virtual {v2, v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v13

    if-eqz v13, :cond_b8

    move v13, v7

    goto :goto_b9

    :cond_b8
    move v13, v6

    :goto_b9
    if-eqz v4, :cond_c3

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInHotseatOnTopStates()Z

    move-result v4

    if-ne v4, v7, :cond_c3

    move v4, v7

    goto :goto_c4

    :cond_c3
    move v4, v6

    :goto_c4
    if-nez v4, :cond_ce

    if-nez v9, :cond_ce

    if-nez v12, :cond_ce

    if-nez v13, :cond_ce

    move v4, v7

    goto :goto_cf

    :cond_ce
    move v4, v6

    :goto_cf
    if-eqz v9, :cond_fc

    iget-object v12, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v12, v12, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v13, v12, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v13, :cond_dc

    check-cast v12, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    goto :goto_dd

    :cond_dc
    const/4 v12, 0x0

    :goto_dd
    if-eqz v12, :cond_e2

    invoke-virtual {v12, v7}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->setSkipApplyState(Z)V

    :cond_e2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onStateTransitionComplete skip  isStashedForManualChanged : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " ，setSkipApplyState(true)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fc
    invoke-virtual {v2, v3, v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-virtual {v2, v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v3

    if-eqz v3, :cond_10a

    if-nez p1, :cond_11a

    :cond_10a
    if-nez v3, :cond_10e

    if-eqz p1, :cond_11a

    :cond_10e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v3

    if-eqz v3, :cond_11c

    :cond_11a
    move v3, v7

    goto :goto_11d

    :cond_11c
    move v3, v6

    :goto_11d
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000  # 1.0f

    if-eqz p1, :cond_124

    move v13, v12

    goto :goto_125

    :cond_124
    move v13, v5

    :goto_125
    if-eqz p1, :cond_1b5

    if-eqz v9, :cond_148

    iget-object v7, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7, v12}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3f1eb852  # 0.62f

    invoke-direct {v10, v5, v5, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    long-to-double v10, v0

    const-wide v14, 0x3fdbca616e2e6d33L  # 0.4342273307790549

    mul-double/2addr v10, v14

    double-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_148
    if-eqz v9, :cond_156

    const-wide v5, 0x3fdb37e875b37e87L  # 0.42528735632183906

    long-to-double v10, v0

    mul-double/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_15a

    :cond_156
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_15a
    if-eqz v9, :cond_168

    const-wide v6, 0x3fe2640bc52640bcL  # 0.5747126436781609

    long-to-double v0, v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_16c

    :cond_168
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_16c
    iget-object v1, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getMaxTransY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v2, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v1, :cond_1ad

    invoke-virtual {v1, v13}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1a7

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    :cond_1a7
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1ad
    if-eqz v4, :cond_1fc

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1fc

    :cond_1b5
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v11, [Landroid/animation/Animator;

    iget-object v15, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v15, v12}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v11, v6

    iget-object v6, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v6, v5}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v11, v7

    iget-object v5, v2, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v11, v10

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v4, :cond_1dc

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    goto :goto_1de

    :cond_1dc
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1de
    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v2, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v4, :cond_1f9

    invoke-virtual {v4, v13}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-eqz v3, :cond_1f1

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    goto :goto_1f3

    :cond_1f1
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1f3
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1f9
    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_1fc
    :goto_1fc
    move-wide/from16 v5, p4

    invoke-virtual {v8, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    if-eqz v9, :cond_20b

    if-eqz p1, :cond_208

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_MANUAL_HIDE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_20d

    :cond_208
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_MANUAL_SHOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_20d

    :cond_20b
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_STASH_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_20d
    move-object v1, v0

    new-instance v7, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;

    move-object v0, v7

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v9

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;-><init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/taskbar/OplusTaskbarStashController;ZZJ)V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string v0, "\tmUnStashHeightFollowDensity="

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getContentHeightForIme()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    goto :goto_1f

    :cond_1d
    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    :goto_1f
    return p0

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    goto :goto_2f

    :cond_2d
    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    :goto_2f
    return p0

    :cond_30
    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightForIme()I

    move-result p0

    return p0
.end method

.method public getContentHeightToReportToApps()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    const-string v1, "TaskbarStashController"

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_21

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    goto :goto_23

    :cond_21
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentHeightToReportToApps small screen. isGestureNavbarHidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", contentHeight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    return p0

    :cond_4f
    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    return p0

    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_ff

    const/16 v2, 0x161e

    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    const-string v2, "mActivity.taskbarProfile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "getContentHeightToReportToApps 1, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0

    :cond_8d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v2

    if-eqz v0, :cond_bf

    iget v0, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_bf

    if-nez v2, :cond_bf

    const-string v0, "getContentHeightToReportToApps 2, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0

    :cond_bf
    const-string v0, "getContentHeightToReportToApps 3, 0"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    return p0

    :cond_c7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d6

    const/4 v0, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v2

    if-eqz v2, :cond_f1

    if-nez v0, :cond_f1

    const-string v0, "getContentHeightToReportToApps 3， 0"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    goto :goto_fe

    :cond_f1
    const-string v0, "getContentHeightToReportToApps 4, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    :goto_fe
    return p0

    :cond_ff
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_FLOAT_ABILITY()Z

    move-result v2

    if-eqz v2, :cond_14f

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v0

    if-eqz v0, :cond_11f

    const-string v0, "getContentHeightToReportToApps 5, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    goto :goto_14e

    :cond_11f
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v2

    if-eqz v0, :cond_147

    iget v0, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_147

    if-nez v2, :cond_147

    const-string v0, "getContentHeightToReportToApps 6, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0

    :cond_147
    const-string v0, "getContentHeightToReportToApps 7, 0"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mContentHeightNon:I

    :goto_14e
    return p0

    :cond_14f
    const-string v0, "getContentHeightToReportToApps 8, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0
.end method

.method public final getIsImeShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    return p0
.end method

.method public getTaskbarStashStartDelayForIme()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTouchableHeight()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TaskbarStashController"

    if-eqz v0, :cond_f

    const-string p0, "getTouchableHeight 0, in small screen mode"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_68

    const/16 v0, 0x161e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    const-string v3, "mActivity.taskbarProfile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "getTouchableHeight 1, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0

    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v0

    if-nez v0, :cond_5a

    const-string p0, "getTouchableHeight 2, 0"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5a
    const-string v0, "getTouchableHeight 3, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0

    :cond_68
    const-string v0, "getTouchableHeight 4, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V
    .registers 5

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getTaskbarBgHeightOffsetForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mTaskbarBgHeightOffsetForStash:Lcom/android/quickstep/AnimatedFloat;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mHideTaskbarInZenModeAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeMonitor:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->isZenMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->onZenModeChange(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeMonitor:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeListener:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->register(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public injectAfterInit()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->injectAfterInit()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mUnStashHeightFollowDensity:I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeMonitor:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mZenModeListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->unregister(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final resetBubbleTextViewState()V
    .registers 7

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p0

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_68

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_24

    aget-object v4, p0, v3

    instance-of v5, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_21

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v1

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v3

    if-nez v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    if-nez v1, :cond_28

    const-string/jumbo v1, "resetBubbleTextViewState info:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_55

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TaskbarStashController"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, v2}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    goto :goto_28

    :cond_68
    return-void
.end method

.method public startStashHint(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result v0

    if-nez v0, :cond_54

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_54

    :cond_1b
    if-nez p1, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    return-void

    :cond_33
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_3b

    const p1, 0x3f666666  # 0.9f

    goto :goto_3d

    :cond_3b
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_54
    :goto_54
    return-void
.end method

.method public startUnstashHint(Z)V
    .registers 2

    return-void
.end method

.method public updateStateForFlag(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result p2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mOldIsStashedInApp:Z

    if-eq p2, v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->mOldIsStashedInApp:Z

    const-string/jumbo p2, "updateStateForFlag isStashedInApp:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskbarStashController"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

    :try_start_2b
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_3a

    :catch_33
    move-exception p0

    const-string/jumbo p1, "updateStateForFlag e:"

    invoke-static {p1, p0, v0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.class public final Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;
.super Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarDragLayerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarDragLayerController.kt\ncom/android/launcher3/taskbar/OplusTaskbarDragLayerController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,335:1\n1#2:336\n*E\n"
    }
.end annotation


# static fields
.field private static final CHANGE_BG_DURATION_IN_PARALLEL_WINDOW:J = 0xfaL

.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$Companion;

.field private static final DELAY_HIDE_TASKBAR:J = 0x5dcL

.field private static final FLAGS_ALL:I = -0x1

.field public static final FLAGS_HIDE_BG:I = 0x7c

.field public static final FLAGS_SHOW_BG:I = 0x2

.field public static final FLAG_DEFAULT_SHOW_TASKBAR_BG:I = 0x1

.field public static final FLAG_HIDE_IN_DIALOG_SHOWING:I = 0x10

.field public static final FLAG_HIDE_IN_NAV_BAR_HIDDEN_AND_STASHED:I = 0x40

.field public static final FLAG_HIDE_IN_RECENTS_DISABLED:I = 0x8

.field public static final FLAG_HIDE_IN_TASKBAR_ICON_INVISIBLE:I = 0x4

.field public static final FLAG_HIDE_IN_ZEN_MODE:I = 0x20

.field public static final FLAG_SHOW_IN_PARALLEL_WINDOW:I = 0x2


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mCustomBgAnimator:Landroid/animation/Animator;

.field private mHideTaskbarWindowTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

.field private final mNavbarHiddenListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnParallelWindowChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevTaskbarBgState:I

.field private mShowBg:Ljava/lang/Boolean;

.field private mTaskbarBgState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V
    .registers 4

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskbarDragLayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mPrevTaskbarBgState:I

    new-instance p1, Lcom/android/common/util/m;

    invoke-direct {p1, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mOnParallelWindowChangeListener:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/launcher3/g;

    invoke-direct {p1, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mNavbarHiddenListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$setMCustomBgAnimator$p(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mCustomBgAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mOnParallelWindowChangeListener$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Z)V

    return-void
.end method

.method private final cancelHideTaskbarWindowTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mHideTaskbarWindowTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mHideTaskbarWindowTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->cancel()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method private final createCustomBgAnimator(IZJJ)Landroid/animation/Animator;
    .registers 12

    const-string v0, "createCustomBgAnimator show: "

    const-string v1, ", changedFlags: "

    invoke-static {v0, p2, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskbarBgState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarDragLayerController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mCustomBgAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_35
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mCustomBgAnimator:Landroid/animation/Animator;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_43

    move v3, v1

    goto :goto_44

    :cond_43
    move v3, v2

    :goto_44
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverrideCustom:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v3}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV()Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-eqz p1, :cond_7b

    if-eqz p2, :cond_6c

    invoke-direct {p0, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->hasTaskbarBgStateFlag(I)Z

    move-result p1

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStashedHandleController()Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->isStashViewInHiddenState()Z

    move-result p1

    if-nez p1, :cond_6c

    move v1, v2

    :cond_6c
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-virtual {p1, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7b
    const-wide/16 p1, 0x0

    cmp-long v1, p3, p1

    if-ltz v1, :cond_84

    invoke-virtual {v0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_84
    cmp-long p1, p5, p1

    if-lez p1, :cond_8b

    invoke-virtual {v0, p5, p6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8b
    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$createCustomBgAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$createCustomBgAnimator$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mCustomBgAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mNavbarHiddenListener$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final delayHideTaskbarWindow()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$delayHideTaskbarWindow$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$delayHideTaskbarWindow$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mHideTaskbarWindowTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mHideTaskbarWindowTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final getStateString(I)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/util/StringJoiner;

    const-string/jumbo v0, "|"

    invoke-direct {p0, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const-string v1, "DEFAULT_SHOW_TASKBAR_BG"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "SHOW_IN_PARALLEL_WINDOW"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "HIDE_IN_TASKBAR_ICON_INVISIBLE"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "HIDE_IN_RECENTS_DISABLED"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "HIDE_IN_DIALOG_SHOWING"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x20

    const-string v1, "HIDE_IN_ZEN_MODE"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x40

    const-string v1, "HIDE_IN_NAV_BAR_HIDDEN_AND_STASHED"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "str.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final hasTaskbarBgStateFlag(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static final mNavbarHiddenListener$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isGesNavBarHiddenAndStashed()Z

    move-result p1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyState()V

    return-void
.end method

.method private static final mOnParallelWindowChangeListener$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Z)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_18

    :cond_13
    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_18
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1d
    const-string p0, "OnParallelWindowChangeListener inParallelWindow: "

    const-string v0, "TaskbarDragLayerController"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private final showTaskbarBg(I)Z
    .registers 5

    and-int/lit8 p0, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_8

    move p0, v1

    goto :goto_9

    :cond_8
    move p0, v0

    :goto_9
    and-int/lit8 v2, p1, 0x7c

    if-eqz v2, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_16

    move p1, v1

    goto :goto_17

    :cond_16
    move p1, v0

    :goto_17
    if-eqz v2, :cond_1a

    goto :goto_22

    :cond_1a
    if-nez p0, :cond_21

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, p0

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    :goto_22
    return v0
.end method


# virtual methods
.method public final applyState()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyState(J)V

    return-void
.end method

.method public final applyState(J)V
    .registers 9

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyState(JJZ)V

    return-void
.end method

.method public final applyState(JJZ)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyStateWithoutStart(JJ)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_b

    if-eqz p5, :cond_b

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_b
    return-void
.end method

.method public final applyStateWithoutStart(J)Landroid/animation/Animator;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyStateWithoutStart(JJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final applyStateWithoutStart(JJ)Landroid/animation/Animator;
    .registers 14

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mPrevTaskbarBgState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    if-eq v0, v2, :cond_2e

    :cond_9
    if-ne v0, v1, :cond_c

    goto :goto_f

    :cond_c
    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    xor-int/2addr v1, v0

    :goto_f
    move v3, v1

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mPrevTaskbarBgState:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->showTaskbarBg(I)Z

    move-result v4

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mShowBg:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    return-object p0

    :cond_30
    :goto_30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mShowBg:Ljava/lang/Boolean;

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->createCustomBgAnimator(IZJJ)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mCustomBgAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string v0, "\talpha="

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmBgOverrideCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverrideCustom:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tdragLayerBgAlpha="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tdragLayerBgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getBackgroundHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getTaskbarBgHeightOffsetForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    if-eqz v0, :cond_89

    const-string v1, "\ttaskbarBgHeightOffsetForStash="

    invoke-static {p1, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_89
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    if-eqz v0, :cond_a1

    const-string v1, "\ttaskbarBgHeightOffsetForHandleView="

    invoke-static {p1, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a1
    const-string v0, "\tmShowBg:"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mShowBg:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmTaskbarBgState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public final getTaskbarBgHeightOffsetForStash()Lcom/android/quickstep/AnimatedFloat;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getTaskbarBgHeightOffsetForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 3

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->isDefaultShowTaskbarBg()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->isInParallelWindow()Z

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isGesNavBarHiddenAndStashed()Z

    move-result p1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyState()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mOnParallelWindowChangeListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->addParallelWindowChangeListener(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mNavbarHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/navigation/NavigationController;->addStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    const-string v0, "mActivity.taskbarProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    return-void
.end method

.method public final isTaskbarBgTransparent()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final onConfigurationChanged(I)V
    .registers 4

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    const-string/jumbo v0, "onConfigurationChanged uiModeChange: "

    const-string v1, "TaskbarDragLayerController"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarDragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->refreshTaskbarBgColor()V

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->onUiModeChange(Landroid/content/Context;)V

    :cond_23
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->onDestroy()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mPrevTaskbarBgState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mShowBg:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mOnParallelWindowChangeListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->removeParallelWindowChangeListener(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mNavbarHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->removeStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onFoldStateChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V
    .registers 4

    const-string/jumbo v0, "taskbarProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_12

    :cond_10
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->cancelHideTaskbarWindowTask()V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_31

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->delayHideTaskbarWindow()V

    :cond_31
    :goto_31
    return-void
.end method

.method public final updateAndApplyState(IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    const-wide/16 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyState(J)V

    return-void
.end method

.method public final updateFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    or-int/2addr p1, p2

    goto :goto_a

    :cond_6
    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_a
    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->mTaskbarBgState:I

    return-void
.end method

.class public final Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDynamicTaskLogicInjector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicTaskLogicInjector.kt\ncom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,313:1\n1247#2,2:314\n1#3:316\n*S KotlinDebug\n*F\n+ 1 DynamicTaskLogicInjector.kt\ncom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector\n*L\n66#1:314,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

.field private static final TAG:Ljava/lang/String; = "RDT_Injector"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->interceptPullLaunchTask$lambda$10$lambda$9(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final interceptAnimLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    :cond_b
    instance-of v0, p1, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez v0, :cond_48

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-ne v2, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    if-eqz v0, :cond_23

    goto :goto_48

    :cond_23
    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_2c

    :cond_2b
    move-object p0, v2

    :goto_2c
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    :cond_3a
    invoke-interface {v0, p0, v2, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onAnimLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_42
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_48
    :goto_48
    return v1
.end method

.method public static final interceptPullLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->isDynamicTaskView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3f

    :cond_e
    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_18

    :cond_17
    move-object v0, v2

    :goto_18
    if-eqz v0, :cond_3a

    instance-of v3, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v3, :cond_22

    move-object v3, p1

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_23

    :cond_22
    move-object v3, v2

    :goto_23
    if-eqz p2, :cond_2d

    new-instance v4, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;

    invoke-direct {v4, v3}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2d
    if-eqz p2, :cond_3a

    new-instance v2, Lcom/android/launcher3/j0;

    invoke-direct {v2, v0, p0, p1, v3}, Lcom/android/launcher3/j0;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p2, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    move-object v2, p0

    :cond_3a
    if-nez v2, :cond_3d

    return v1

    :cond_3d
    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    return v1
.end method

.method private static final interceptPullLaunchTask$lambda$10$lambda$9(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 7

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptPullLaunchTask(), onEnd, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RDT_Injector"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_38

    sget-object p3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p3}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_49

    move-object p3, p1

    check-cast p3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-interface {p0, p3, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onPullLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_49

    :cond_38
    const/4 p0, 0x0

    if-nez p3, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {p3, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIgnoreResetScale(Z)V

    :goto_3f
    if-nez p3, :cond_42

    goto :goto_46

    :cond_42
    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTranslationZ(F)V

    :goto_46
    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    :cond_49
    :goto_49
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method public static final onClickChangeWindowModeShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    instance-of v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_16

    move-object v0, p0

    :cond_16
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-interface {p0, v0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onTaskWindowModeChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    :cond_21
    return-void
.end method

.method public static final onClickContentProtectShortcut(Lcom/android/launcher3/BaseDraggingActivity;Z)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_10

    :cond_f
    move-object p0, v0

    :goto_10
    instance-of v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    move-object p0, v0

    :goto_16
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onContentProtectStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_26
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2c
    return v1
.end method

.method public static final onClickDynamicSwitchShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    instance-of v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_16

    move-object v0, p0

    :cond_16
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_2b

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSuperLocking(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    invoke-interface {p0, v0, p1, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onDynamicStatusChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V

    :cond_2b
    return-void
.end method

.method public static final onEnterOverviewByStateAnimChange(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/LauncherState;",
            "Lcom/android/launcher3/LauncherState;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_1d

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-eqz p0, :cond_42

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateAnimChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public static final onEnterOverviewByStateChange(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/LauncherState;",
            "Lcom/android/launcher3/LauncherState;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_48

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_48

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_23

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static final onEnterOverviewBySwipeToRecent(Lcom/android/quickstep/views/RecentsView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_19

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "onEnterOverviewBySwipeToRecent"

    invoke-interface {v0, p0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static final onEnterOverviewByToggle(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_25

    :cond_24
    move-object p0, v0

    :goto_25
    instance-of v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_2a

    move-object v0, p0

    :cond_2a
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_37

    const-string v1, "onEnterOverviewByToggle"

    invoke-interface {p0, v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public static final onExitRecentsViewByStateChanged(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/LauncherState;",
            "Lcom/android/launcher3/LauncherState;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_2b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onExitRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public static final onLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    instance-of v0, p1, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-ne v2, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    if-eqz v0, :cond_23

    goto :goto_3d

    :cond_23
    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_2c

    :cond_2b
    move-object p0, v1

    :goto_2c
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    :cond_3a
    invoke-interface {v0, p0, v1, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static final onSplitModeChanged(ZLcom/android/launcher/Launcher;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_16

    :cond_15
    move-object p1, v1

    :goto_16
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v1

    :cond_22
    if-eqz v1, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSplitModeChanged(), isInSplit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RDT_Injector"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_43

    invoke-interface {p0, p1, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onTaskWindowModeChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    :cond_43
    return-void
.end method

.method public static final updateThumbnailRotation(Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/quickstep/views/TaskView;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_8

    return-void

    :cond_8
    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    iget v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    if-nez v0, :cond_29

    move v2, v3

    :cond_29
    if-eqz v2, :cond_3d

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, p1

    :goto_3b
    iput v3, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    :cond_3d
    return-void
.end method


# virtual methods
.method public final isDynamicTaskView(Landroid/view/View;)Z
    .registers 4

    sget-boolean p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_41

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_41

    instance-of p0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_41

    move-object p0, p1

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result p0

    if-ne p0, v1, :cond_22

    move p0, v1

    goto :goto_23

    :cond_22
    move p0, v0

    :goto_23
    if-eqz p0, :cond_26

    goto :goto_41

    :cond_26
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of p1, p1, Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p1, :cond_30

    move v0, v1

    :cond_41
    :goto_41
    return v0
.end method

.method public final isShowing(Lcom/android/quickstep/views/RecentsView;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;)Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    const/4 v0, 0x0

    if-nez p0, :cond_b

    return v0

    :cond_b
    instance-of p0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    const/4 p0, 0x1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->isDynamicTaskShowing()Z

    move-result p1

    if-ne p1, p0, :cond_23

    move v0, p0

    :cond_23
    return v0
.end method

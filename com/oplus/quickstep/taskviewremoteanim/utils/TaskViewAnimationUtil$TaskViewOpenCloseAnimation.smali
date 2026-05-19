.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskViewOpenCloseAnimation"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskViewAnimationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskViewAnimationUtil.kt\ncom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,691:1\n42#2:692\n94#2,14:693\n31#2:707\n94#2,14:708\n42#2:722\n94#2,14:723\n42#2:737\n94#2,14:738\n31#2:752\n94#2,14:753\n42#2:767\n94#2,14:768\n31#2:782\n94#2,14:783\n42#2:797\n94#2,14:798\n31#2:812\n94#2,14:813\n*S KotlinDebug\n*F\n+ 1 TaskViewAnimationUtil.kt\ncom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation\n*L\n108#1:692\n108#1:693,14\n112#1:707\n112#1:708,14\n127#1:722\n127#1:723,14\n148#1:737\n148#1:738,14\n153#1:752\n153#1:753,14\n170#1:767\n170#1:768,14\n174#1:782\n174#1:783,14\n204#1:797\n204#1:798,14\n208#1:812\n208#1:813,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DRAG_LAYER_ALPHA:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;

.field private static final LAUNCHER_VIEWS_CLOSE_DURATION_MS:J = 0x12cL

.field private static final LAUNCHER_VIEWS_OPEN_DURATION_MS:J = 0x17cL

.field private static final TASK_VIEW_CLOSE_DURATION_MS:J = 0x12cL

.field private static final TASK_VIEW_OPEN_DURATION_MS:J = 0x17cL


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->DRAG_LAYER_ALPHA:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDRAG_LAYER_ALPHA$p()Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->DRAG_LAYER_ALPHA:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    return-object v0
.end method

.method public static final createTaskViewCloseAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;",
            "Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/animation/Animator;",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/animation/Animator;",
            "Lh4/z;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doOnStart"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doOnEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_27

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnStart$1;

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnStart$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnEnd$1;

    invoke-direct {p0, p4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnEnd$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_27
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingRunning()Z

    move-result p2

    if-ne p2, v1, :cond_33

    move p2, v1

    goto :goto_34

    :cond_33
    move p2, v2

    :goto_34
    const/4 v3, 0x0

    if-nez p2, :cond_6e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget-boolean v4, v4, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_4b

    move v4, v3

    goto :goto_4f

    :cond_4b
    invoke-virtual {p2}, Lcom/android/launcher3/OplusDragLayer;->getTargetAlpha()F

    move-result v4

    :goto_4f
    sget-object v5, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->DRAG_LAYER_ALPHA:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    new-array v6, v1, [F

    aput v4, v6, v2

    invoke-static {p2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x17c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;

    invoke-direct {v5, p0, p2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6e
    sget-object p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;->getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;

    move-result-object p0

    new-array p2, v1, [F

    aput v3, p2, v2

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnStart$2;

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnStart$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnEnd$2;

    invoke-direct {p0, p4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$$inlined$doOnEnd$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final createTaskViewOpenAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;",
            "Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/animation/Animator;",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/animation/Animator;",
            "Lh4/z;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doOnStart"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doOnEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_27

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$1;

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnEnd$1;

    invoke-direct {p0, p4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnEnd$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingRunning()Z

    move-result p2

    if-ne p2, v2, :cond_33

    move p2, v2

    goto :goto_34

    :cond_33
    move p2, v1

    :goto_34
    xor-int/2addr p2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget-boolean v3, v3, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_46

    move v3, v4

    goto :goto_48

    :cond_46
    const/high16 v3, 0x3f800000  # 1.0f

    :goto_48
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    sget-object v6, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->DRAG_LAYER_ALPHA:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    new-array v7, v2, [F

    aput v4, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v9, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v10, "dragLayerAnimator"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$2;

    invoke-direct {v10, v5}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$2;-><init>(Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {v6, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_8b

    sget-object v5, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    invoke-virtual {v5}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;->getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;

    move-result-object v5

    new-array v2, v2, [F

    aput v3, v2, v1

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x17c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_ac

    if-eqz p2, :cond_ac

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1, v4, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_ac
    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$3;

    invoke-direct {p1, p3, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnStart$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnEnd$2;

    invoke-direct {p0, p4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewOpenAnimation$$inlined$doOnEnd$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final isStartingMultipleTasks()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getIsStartingMultipleTasks()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "isStartingMultipleTasks="

    const-string v2, "QuickStep"

    const-string v3, "TaskViewAnimationUtil"

    invoke-static {v1, v0, v2, v3}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return v0
.end method

.method public static final resetStartingMultipleTasks()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->resetStartingMultipleTasks()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "QuickStep"

    const-string v1, "TaskViewAnimationUtil"

    const-string v2, "resetIsStartingMultipleTasks"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

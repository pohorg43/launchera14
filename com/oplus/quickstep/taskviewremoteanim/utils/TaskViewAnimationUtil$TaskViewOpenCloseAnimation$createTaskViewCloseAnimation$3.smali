.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->createTaskViewCloseAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dragLayer:Lcom/android/launcher3/OplusDragLayer;

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;->$dragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_21

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->access$getDRAG_LAYER_ALPHA$p()Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$createTaskViewCloseAnimation$3;->$dragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->getTargetAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_21
    return-void
.end method

.class Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconsPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$100(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->EXIT_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->EXIT_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$000(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_1d
    return-void
.end method

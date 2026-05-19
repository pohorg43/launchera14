.class public final Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_21

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_21

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiLaunchForceFinish()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    move p1, v2

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v3

    :goto_22
    const-string v1, "onEnd, mIsRecentReverseScene = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentAnimState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isMultiSceneNotNeedReset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WorkspaceContentAnim"

    invoke-static {v1, p1, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    sget-object v4, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->OPEN_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v4, v1, v2

    sget-object v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->RECENT_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result v0

    if-nez v0, :cond_66

    :cond_64
    if-eqz p1, :cond_67

    :cond_66
    return-void

    :cond_67
    iget-object p1, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$getAnimateViews$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)[Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$setViewAlpha(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;F[Landroid/view/View;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-static {p0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$getAnimateViews$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)[Landroid/view/View;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$setViewScale(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;F[Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "onStart, mIsRecentReverseScene = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WorkspaceContentAnim"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->cancelResetView()V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-static {v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :goto_3e
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-static {v2}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->OPEN_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->RECENT_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p0, p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$getAnimateViews$p(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;)[Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;->access$setViewAlpha(Lcom/oplus/quickstep/anim/WorkspaceContentAnim;F[Landroid/view/View;)V

    :cond_70
    return-void
.end method

.class public final Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/DragLayerContentAnim;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

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

    const/4 v2, 0x1

    const/4 v3, 0x0

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
    move p1, v3

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v2

    :goto_22
    const-string v1, "onEnd, mIsRecentReverseScene = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentAnimState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isMultiSceneNotNeedReset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mResetDragLayerState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->getMResetDragLayerState()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragLayerContentAnim"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    sget-object v4, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->OPEN_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v4, v1, v3

    sget-object v4, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->RECENT_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_79
    if-eqz p1, :cond_84

    :cond_7b
    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->getMResetDragLayerState()Z

    move-result p1

    if-nez p1, :cond_84

    return-void

    :cond_84
    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    new-array v0, v2, [Landroid/view/View;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMDragLayer$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    aput-object v1, v0, v3

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$setViewAlpha(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    new-array v0, v2, [Landroid/view/View;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMDragLayer$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$setViewScale(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMDepthController$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->getMResetDragLayerState()Z

    move-result p1

    if-eqz p1, :cond_b7

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setMResetDragLayerState(Z)V

    :cond_b7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 10

    const-string p1, "onStart, mIsRecentReverseScene = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DragLayerContentAnim"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setMResetDragLayerState(Z)V

    sget-object p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->cancelResetView()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    new-array v4, v3, [Landroid/view/View;

    invoke-static {v1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    goto :goto_42

    :cond_41
    move-object v5, v6

    :goto_42
    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-static {v5}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_5a

    :cond_59
    move-object v5, v6

    :goto_5a
    aput-object v5, v4, v2

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v1, v5, v4}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$setViewScale(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V

    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    new-array v4, v3, [Landroid/view/View;

    invoke-static {v1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    goto :goto_71

    :cond_70
    move-object v7, v6

    :goto_71
    aput-object v7, v4, v0

    iget-object v7, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-static {v7}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    if-eqz v7, :cond_87

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    if-eqz v7, :cond_87

    invoke-virtual {v7}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :cond_87
    aput-object v6, v4, v2

    invoke-static {v1, v5, v4}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$setViewAlpha(Lcom/oplus/quickstep/anim/DragLayerContentAnim;F[Landroid/view/View;)V

    :cond_8c
    iget-object v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMIsRecentReverseScene()Z

    move-result v1

    if-nez v1, :cond_ce

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    new-array v1, v3, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    sget-object v3, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->OPEN_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v3, v1, v0

    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->RECENT_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result p1

    if-eqz p1, :cond_ab

    goto :goto_ce

    :cond_ab
    iget-object p1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-nez p1, :cond_b8

    goto :goto_bc

    :cond_b8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :goto_bc
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$createAnimatorListener$1;->this$0:Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-static {p0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/DragLayerContentAnim;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const v0, 0x3f666666  # 0.9f

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_ce
    :goto_ce
    return-void
.end method

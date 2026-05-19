.class public Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/OplusFloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimatorListener"
.end annotation


# instance fields
.field public mHasBeenRecycled:Z

.field public final synthetic this$0:Lcom/android/launcher3/views/OplusFloatingIconView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusFloatingIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->recycle()V

    return-void
.end method

.method private recycle()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "FloatingIconView onAnimationCancel, opening "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", app = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHasBeenRecycled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    const-string v1, "OplusFloatingIconView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v0, :cond_4b

    iget-object v2, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-interface {v0, v2, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z

    move-result p1

    const-string/jumbo v0, "shouldShow = "

    const-string v2, ", view = "

    invoke-static {v0, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_4b
    const/4 p1, 0x1

    :goto_4c
    if-eqz p1, :cond_53

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "FloatingIconView onAnimationEnd, opening "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", app = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHasBeenRecycled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    const-string v1, "OplusFloatingIconView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->access$202(Lcom/android/launcher3/views/OplusFloatingIconView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    if-eqz p1, :cond_30

    return-void

    :cond_30
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetRecentReverseOpts()V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_3e
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4d

    :cond_48
    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    :goto_4d
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-eqz v0, :cond_83

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_73

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isHoldFolderOpen()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_73
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_83

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_83
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_b2

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_b2

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_b2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_b2

    const-string/jumbo p1, "tryAndUpdatePredictedApps when floating anim end!"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    :cond_b2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "FloatingIconView onAnimationStart, opening "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", app = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHasBeenRecycled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    const-string v1, "OplusFloatingIconView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    if-eqz p1, :cond_2a

    return-void

    :cond_2a
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz p1, :cond_3f

    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz p1, :cond_3f

    const-string p1, "FloatingIconView onAnimationStart Start-- Icon has loaded"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->setVisibility(I)V

    :cond_3f
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_8c

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_5d

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->access$100(Lcom/android/launcher3/views/OplusFloatingIconView;Lcom/android/launcher3/OplusBubbleTextView;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    goto :goto_81

    :cond_5d
    instance-of p1, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    const/4 v2, 0x4

    if-eqz p1, :cond_66

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_66
    instance-of p1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p1, :cond_6e

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_6e
    invoke-static {v0}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_81

    const-string p1, "FloatingIconView onAnimationStart Start-- set GroupChildCardView alpha 0f"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_81
    :goto_81
    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_8c
    return-void
.end method

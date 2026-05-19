.class public final Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createDockExitAnimator(ZLjava/lang/String;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockViewController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 5

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {v0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getStateAlphaProperty(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_c
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {v0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createDockExitAnimator "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onAnimationFinish, isCancelled: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DockViewController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/common/util/AnimationCallback;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    const-string p0, "DockViewController"

    const-string p1, "createDockExitAnimator onAnimationStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createEnterAnimator(ZLjava/lang/String;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $resetIconViewsTask:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockViewController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->$resetIconViewsTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    if-nez p2, :cond_12

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->$resetIconViewsTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_12
    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createEnterAnimator onAnimationFinish, isCancelled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", alpha:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p2}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", visible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5e

    const/4 p0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p0, 0x0

    :goto_5f
    const-string p2, "DockViewController"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/common/util/AnimationCallback;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getStateAlphaProperty(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3c

    move p1, v0

    goto :goto_3d

    :cond_3c
    move p1, v1

    :goto_3d
    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_48
    const-string p1, "createEnterAnimator onAnimationStart, alpha:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {v2}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", visible: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    const-string p0, "DockViewController"

    invoke-static {p1, v0, p0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.class Lcom/android/launcher/touch/PullDownAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/PullDownAnimator;->createPullCancelAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/touch/PullDownAnimator;

.field public final synthetic val$isCanceled:[Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/PullDownAnimator;[Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    iput-object p2, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->val$isCanceled:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->val$isCanceled:[Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p1}, Lcom/android/launcher/touch/PullDownAnimator;->access$100(Lcom/android/launcher/touch/PullDownAnimator;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->resetStatus()V

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->val$isCanceled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p1}, Lcom/android/launcher/touch/PullDownAnimator;->access$200(Lcom/android/launcher/touch/PullDownAnimator;)Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    :cond_1d
    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p1}, Lcom/android/launcher/touch/PullDownAnimator;->access$300(Lcom/android/launcher/touch/PullDownAnimator;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    iget-object p1, p1, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->resetScreenStatus()V

    goto :goto_40

    :cond_35
    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->val$isCanceled:[Z

    aget-boolean p1, p1, v0

    if-nez p1, :cond_40

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator$2;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->resetStatus()V

    :cond_40
    :goto_40
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

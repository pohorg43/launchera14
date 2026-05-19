.class Lcom/android/launcher/touch/PullDownAnimator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/PullDownAnimator;->createPullFinishAnimator(F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/touch/PullDownAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/PullDownAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$4;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "PullDownAnimator"

    const-string v0, "FinishAnimator onAnimationCancel: "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$4;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p1}, Lcom/android/launcher/touch/PullDownAnimator;->access$100(Lcom/android/launcher/touch/PullDownAnimator;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator$4;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p0}, Lcom/android/launcher/touch/PullDownAnimator;->access$200(Lcom/android/launcher/touch/PullDownAnimator;)Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    :cond_19
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "PullDownAnimator"

    const-string p1, "FinishAnimator onAnimationEnd: "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "PullDownAnimator"

    const-string p1, "FinishAnimator onAnimationRepeat: "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "PullDownAnimator"

    const-string p1, "FinishAnimator onAnimationStart: "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

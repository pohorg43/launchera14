.class Lcom/android/launcher3/pullup/controller/CommonAnimController$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/controller/CommonAnimController;->createPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    const/16 p1, 0x66

    invoke-static {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$102(Lcom/android/launcher3/pullup/controller/CommonAnimController;I)I

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$300(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$300(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {v1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/pullup/itf/IDoOperatorItf;->onAnimEnd(ZF)V

    :cond_34
    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$002(Lcom/android/launcher3/pullup/controller/CommonAnimController;F)F

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    :cond_4b
    return-void
.end method

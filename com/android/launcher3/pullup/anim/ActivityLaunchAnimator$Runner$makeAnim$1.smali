.class public final Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->makeAnim(Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    invoke-static {v0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->access$invoke(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;->this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationStart()V

    return-void
.end method

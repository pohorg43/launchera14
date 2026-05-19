.class public interface abstract Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunningWindowAnim"
.end annotation


# direct methods
.method public static wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static wrap(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;)V

    return-object v0
.end method

.method public static wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cancelWithoutEndAnim()V
    .registers 1

    return-void
.end method

.method public abstract end()V
.end method

.method public getAnim()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

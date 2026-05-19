.class Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlexibleTaskAnimatorListenerAdapter"
.end annotation


# instance fields
.field private mFinished:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->mFinished:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onFinish()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->mFinished:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->onAnimationFinished()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->onFinish()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->onFinish()V

    return-void
.end method

.method public onAnimationFinished()V
    .registers 2

    const-string p0, "FlexibleTaskTransitionHandler"

    const-string v0, " onAnimationFinished."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

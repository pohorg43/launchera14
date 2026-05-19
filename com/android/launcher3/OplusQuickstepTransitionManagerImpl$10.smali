.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->playAnimatorAsync(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field public final synthetic val$asyncAnimator:Landroid/animation/Animator;

.field public final synthetic val$startControlAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/AnimatorSet;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$animatorSet:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$asyncAnimator:Landroid/animation/Animator;

    iput-object p4, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$startControlAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method public static synthetic b(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->lambda$onAnimationCancel$1(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic d(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->lambda$onAnimationSuccess$0(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic e(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->lambda$onAnimationStart$2(Landroid/animation/Animator;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationCancel$1(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$onAnimationStart$2(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$onAnimationSuccess$0(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$animatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_10

    sget-object p1, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$asyncAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/r1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/r1;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$startControlAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_10

    sget-object p1, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$asyncAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/t1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/t1;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$animatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_10

    sget-object p1, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->val$asyncAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/s1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/s1;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

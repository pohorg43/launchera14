.class public Lcom/android/wm/shell/compatui/DialogAnimationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/wm/shell/compatui/DialogContainerSupplier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_DIM_ALPHA:I = 0xcc

.field private static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTER_ANIM_START_DELAY_MILLIS:I


# instance fields
.field private final mAnimStyleResId:I

.field private mBackgroundDimAnimator:Landroid/animation/Animator;

.field private mDialogAnimation:Landroid/view/animation/Animation;

.field private final mPackageName:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x12c

    goto :goto_9

    :cond_7
    const/16 v0, 0x1f4

    :goto_9
    sput v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    new-instance v0, Lcom/android/wm/shell/compatui/DialogAnimationController$3;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->DRAWABLE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302d6

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/internal/R$styleable;->Window_windowAnimationStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mAnimStyleResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/DialogAnimationController;->lambda$startEnterAnimation$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/wm/shell/compatui/DialogAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic b(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->lambda$startEnterAnimation$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/wm/shell/compatui/DialogAnimationController;->lambda$startExitAnimation$2()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/DialogAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->lambda$startExitAnimation$3(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;
    .registers 7

    sget-object v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object p0
.end method

.method private getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;
    .registers 4

    new-instance v0, Lcom/android/wm/shell/compatui/DialogAnimationController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/compatui/DialogAnimationController$1;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/compatui/DialogAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/DialogAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;)V

    return-object v0
.end method

.method private static synthetic lambda$startEnterAnimation$0(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startEnterAnimation$1(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$startExitAnimation$2()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$startExitAnimation$3(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private loadAnimation(I)Landroid/view/animation/Animation;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mAnimStyleResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object v0
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    :cond_13
    return-void
.end method

.method public startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_windowEnterAnimation:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_15
    new-instance v2, Lcom/android/wm/shell/compatui/z;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/compatui/z;-><init>(Landroid/view/View;)V

    new-instance v3, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xcc

    iget-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    sget p2, Lcom/android/wm/shell/compatui/DialogAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_windowExitAnimation:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_15
    sget-object v2, Lcom/android/wm/shell/compatui/o;->b:Lcom/android/wm/shell/compatui/o;

    new-instance v3, Lcom/android/quickstep/f1;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/quickstep/f1;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

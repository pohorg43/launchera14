.class public Lcom/android/quickstep/AnimatedFloat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;

.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEndValue:Ljava/lang/Float;

.field public mStartValue:Ljava/lang/Float;

.field public mUpdateCallback:Ljava/lang/Runnable;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/AnimatedFloat$1;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/quickstep/u;->b:Lcom/android/quickstep/u;

    sput-object v0, Lcom/android/quickstep/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/android/quickstep/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AnimatedFloat;->lambda$static$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private static synthetic lambda$static$0()V
    .registers 0

    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/ObjectAnimator;
    .registers 3

    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public animateToValue(FF)Landroid/animation/ObjectAnimator;
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    sget-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mStartValue:Ljava/lang/Float;

    iget-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat$2;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/AnimatedFloat$2;-><init>(Lcom/android/quickstep/AnimatedFloat;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public cancelAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mStartValue:Ljava/lang/Float;

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_a
    return-void
.end method

.method public finishAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mStartValue:Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_12
    return-void
.end method

.method public getCurrentAnimation()Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public getStartValue()Ljava/lang/Float;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mStartValue:Ljava/lang/Float;

    return-object p0
.end method

.method public isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAnimatingToValue(F)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSettledOnValue(F)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_e

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public startAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    return-void
.end method

.method public updateValue(F)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_f

    iput p1, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

.method public updateValue(FZ)V
    .registers 3

    if-nez p2, :cond_a

    iget p2, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_11

    :cond_a
    iput p1, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

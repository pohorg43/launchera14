.class public final Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$animateSpringFactorsTo$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FFLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $endCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$animateSpringFactorsTo$3$1;->$endCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "QuickStep"

    const-string v0, "AnimatedFactorsSpringAnimation"

    const-string v1, "Spring factors AnimatorSet onEnd."

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$animateSpringFactorsTo$3$1;->$endCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void
.end method

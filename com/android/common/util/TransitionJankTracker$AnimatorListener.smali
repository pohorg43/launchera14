.class public Lcom/android/common/util/TransitionJankTracker$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/TransitionJankTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/util/TransitionJankTracker;


# direct methods
.method public constructor <init>(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p1}, Lcom/android/common/util/TransitionJankTracker;->access$000(Lcom/android/common/util/TransitionJankTracker;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p0}, Lcom/android/common/util/TransitionJankTracker;->access$300(Lcom/android/common/util/TransitionJankTracker;)V

    goto :goto_1e

    :cond_e
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p0}, Lcom/android/common/util/TransitionJankTracker;->access$200(Lcom/android/common/util/TransitionJankTracker;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :goto_1e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p1}, Lcom/android/common/util/TransitionJankTracker;->access$000(Lcom/android/common/util/TransitionJankTracker;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p0}, Lcom/android/common/util/TransitionJankTracker;->access$100(Lcom/android/common/util/TransitionJankTracker;)V

    goto :goto_1e

    :cond_e
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p0}, Lcom/android/common/util/TransitionJankTracker;->access$200(Lcom/android/common/util/TransitionJankTracker;)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :goto_1e
    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 3

    iget-object p1, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p1}, Lcom/android/common/util/TransitionJankTracker;->access$000(Lcom/android/common/util/TransitionJankTracker;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->this$0:Lcom/android/common/util/TransitionJankTracker;

    invoke-static {p0}, Lcom/android/common/util/TransitionJankTracker;->access$400(Lcom/android/common/util/TransitionJankTracker;)V

    :cond_d
    return-void
.end method

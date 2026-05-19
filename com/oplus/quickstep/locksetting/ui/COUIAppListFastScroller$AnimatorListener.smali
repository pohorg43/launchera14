.class final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->mCanceled:Z

    return-void

    :cond_d
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMShowHideAnimator$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    move p1, v0

    :goto_2a
    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setMAnimationState(I)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    goto :goto_42

    :cond_37
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setMAnimationState(I)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    :goto_42
    return-void
.end method

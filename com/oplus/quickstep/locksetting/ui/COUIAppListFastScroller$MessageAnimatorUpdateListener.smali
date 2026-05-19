.class final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageAnimatorUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMMessageAlphaAnimatedValue$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    const/16 p1, 0xff

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMMessageAlphaAnimatedValue$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMMessageBackgroundDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_30
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMMessagePaint$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string v0, "mMessagePaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3e
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    return-void
.end method

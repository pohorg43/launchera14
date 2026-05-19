.class final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;
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
    name = "ThumbScaleAnimatorUpdateListener"
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

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const-string v1, "HEIGHT_ANIM_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMCurrentHeightScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const-string v1, "WIDTH_ANIM_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMCurrentWidthScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const-string v1, "THUMB_TRANSLATE_X_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMCurrentThumbTranslateScaleX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMCurrentThumbTranslateScaleX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMScaleEndThumbTranslateX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMCurrentThumbTranslateX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMCurrentThumbTranslateScaleX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMScaleEndThumbTranslateY$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMCurrentThumbTranslateY$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    return-void
.end method

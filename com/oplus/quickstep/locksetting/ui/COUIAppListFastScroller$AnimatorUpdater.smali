.class final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;
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
    name = "AnimatorUpdater"
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

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xff

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getVerticalThumbDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_25
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMVerticalThumbDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_31
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    return-void
.end method

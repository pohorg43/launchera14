.class final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PressAnimatorListener"
.end annotation


# instance fields
.field private isCancel:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;->isCancel:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;->isCancel:Z

    return-void

    :cond_d
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMCurrentWidthScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    move p1, v0

    :goto_1c
    if-nez p1, :cond_1f

    const/4 v0, 0x2

    :cond_1f
    invoke-static {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMPressAnimatorState$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V

    return-void
.end method

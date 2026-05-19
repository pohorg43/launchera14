.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateHintPointVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusTaskHeaderView.kt\ncom/oplus/quickstep/views/OplusTaskHeaderView\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n705#3,3:129\n97#4:132\n96#5:133\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setHintPointHideAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

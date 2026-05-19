.class Lcom/coui/appcompat/button/COUILoadingButton$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/button/COUILoadingButton$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUILoadingButton$5;


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$5$1;->a:Lcom/coui/appcompat/button/COUILoadingButton$5;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

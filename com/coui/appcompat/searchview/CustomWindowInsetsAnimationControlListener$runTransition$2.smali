.class public final Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimationController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->a:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->a:Landroid/view/WindowInsetsAnimationController;

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->b:Z

    invoke-interface {p1, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_14
    return-void
.end method

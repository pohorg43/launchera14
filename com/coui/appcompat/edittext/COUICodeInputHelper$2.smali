.class Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUICodeInputHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_32

    if-eq p1, v0, :cond_28

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1a

    goto :goto_73

    :cond_1a
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iget-boolean p2, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->m:Z

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->c()V

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->o:Z

    goto :goto_73

    :cond_28
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-virtual {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->c()V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->o:Z

    goto :goto_73

    :cond_32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3d

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iput-boolean v0, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->o:Z

    :cond_3d
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_50
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5d
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->n:Z

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->f:Landroid/view/View;

    if-eqz p1, :cond_73

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->o:Z

    if-eqz p0, :cond_73

    const/16 p0, 0x12e

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_73
    :goto_73
    return v1
.end method

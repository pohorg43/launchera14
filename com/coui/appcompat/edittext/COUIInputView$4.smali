.class Lcom/coui/appcompat/edittext/COUIInputView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b(Z)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/4 v0, 0x2

    if-eqz p1, :cond_58

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->n:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_45

    new-array v0, v0, [F

    fill-array-data v0, :array_b4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xd9

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUIInputView$9;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/edittext/COUIInputView$9;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_45
    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_52
    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a9

    :cond_58
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_69
    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_97

    new-array v0, v0, [F

    fill-array-data v0, :array_bc

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x11b

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUIInputView$10;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/edittext/COUIInputView$10;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUIInputView$11;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/edittext/COUIInputView$11;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_97
    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a4
    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_a9
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->s:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    if-eqz p0, :cond_b2

    invoke-interface {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;->a(Z)V

    :cond_b2
    return-void

    nop

    :array_b4
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_bc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.class public Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/view/animation/Interpolator;

.field public e:Landroid/view/animation/Interpolator;

.field public f:Landroid/view/View;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Landroid/animation/ValueAnimator;

.field public l:Landroid/animation/ValueAnimator;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16f

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->a:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->c:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    const v2, 0x3f2b851f  # 0.67f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->e:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->m:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->n:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->o:Z

    new-instance v0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->p:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIZ)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    iput-boolean p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->n:Z

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->f:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->i:I

    iput p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->j:I

    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p4, :cond_1a

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_1a

    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->end()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    :cond_1a
    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2b

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2b

    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->end()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    :cond_2b
    const/4 p4, 0x2

    new-array v0, p4, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    const-string v3, "backgroundColor"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    new-array p4, p4, [I

    aput p3, p4, v1

    aput p2, p4, v2

    invoke-static {p1, v3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->b:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->a:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    if-eq v0, p1, :cond_4d

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_24
    if-nez p1, :cond_3a

    if-nez p2, :cond_32

    iget p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->j:I

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->f:Landroid/view/View;

    if-eqz p0, :cond_4d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4d

    :cond_32
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4d

    :cond_3a
    if-nez p2, :cond_46

    iget p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->i:I

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->f:Landroid/view/View;

    if-eqz p0, :cond_4d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4d

    :cond_46
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->g:Z

    goto :goto_21

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->c:I

    if-ne v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_21
    :goto_21
    return-void
.end method

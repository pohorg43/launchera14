.class Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorHelper"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public volatile e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .registers 12

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->b:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->c:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->d:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_132

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1c2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->p:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/coui/appcompat/searchview/COUISearchBar;->r0:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->p:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/searchview/b;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/searchview/b;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_13a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/coui/appcompat/searchview/COUISearchBar;->s0:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/searchview/d;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/searchview/d;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_142

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->t:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/searchview/f;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/searchview/f;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_14a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->u:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/searchview/e;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/e;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_152

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->r:Landroid/animation/ValueAnimator;

    iget v3, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    const-wide/16 v4, 0x15e

    const-wide/16 v6, 0x64

    if-nez v3, :cond_a5

    move-wide v8, v4

    goto :goto_a6

    :cond_a5
    move-wide v8, v6

    :goto_a6
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->r:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/searchview/COUISearchBar;->t0:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->r:Landroid/animation/ValueAnimator;

    iget v8, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v8, :cond_b8

    move-wide v8, v6

    goto :goto_ba

    :cond_b8
    const-wide/16 v8, 0x0

    :goto_ba
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->r:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/coui/appcompat/searchview/c;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/searchview/c;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_15a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->v:Landroid/animation/ValueAnimator;

    iget v8, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v8, :cond_d7

    goto :goto_d8

    :cond_d7
    move-wide v4, v6

    :goto_d8
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->v:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/searchview/g;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/g;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->o:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->o:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/animation/Animator;

    iget-object v5, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->p:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v0

    iget-object v5, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->q:Landroid/animation/ValueAnimator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->r:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->s:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->s:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    iget-object v3, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->t:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    iget-object v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->u:Landroid/animation/ValueAnimator;

    aput-object v0, v2, v6

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->v:Landroid/animation/ValueAnimator;

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_132
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_13a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_142
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_14a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_152
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_15a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

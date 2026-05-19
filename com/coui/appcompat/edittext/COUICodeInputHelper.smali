.class public Lcom/coui/appcompat/edittext/COUICodeInputHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final n:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Landroid/animation/ValueAnimator;

.field public b:Landroid/animation/ValueAnimator;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->n:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f19999a  # 0.6f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->c:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->f:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->g:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->h:F

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->m:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .registers 8

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->l:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->k:Z

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    const/4 p2, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_2d

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->f:F

    cmpl-float v2, v1, p2

    if-lez v2, :cond_23

    cmpg-float v2, v1, v0

    if-gez v2, :cond_23

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    goto :goto_25

    :cond_23
    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    :goto_25
    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    const p2, 0x3f19999a  # 0.6f

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->c:F

    goto :goto_40

    :cond_2d
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->f:F

    cmpl-float v2, v1, p2

    if-lez v2, :cond_3a

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3a

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    goto :goto_3c

    :cond_3a
    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    :goto_3c
    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->c:F

    :goto_40
    const/4 p2, 0x2

    new-array v1, p2, [F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->c:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string/jumbo v0, "scaleHolder"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p2, [F

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    aput v4, v1, v3

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    aput v4, v1, v2

    const-string v4, "alphaHolder"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p2, v3

    aput-object v1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7a

    const-wide/16 v0, 0x0

    goto :goto_7c

    :cond_7a
    const-wide/16 v0, 0x21

    :goto_7c
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->f:F

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->c:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->g:F

    return-void
.end method

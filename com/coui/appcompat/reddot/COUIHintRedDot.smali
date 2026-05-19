.class public Lcom/coui/appcompat/reddot/COUIHintRedDot;
.super Landroid/view/View;
.source ""


# static fields
.field public static final q:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field public g:Landroid/graphics/RectF;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Landroid/animation/ValueAnimator;

.field public m:I

.field public n:Z

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiHintRedDotStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    const-string v1, ""

    iput-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->e:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->j:I

    sget-object v5, Lcom/support/appcompat/R$styleable;->COUIHintRedDot:[I

    invoke-virtual {p1, p2, v5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedPointMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    sget v2, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedPointNum:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    sget v0, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedPointText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->red_dot_description:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->h:Ljava/lang/String;

    sget p2, Lcom/support/appcompat/R$plurals;->red_dot_with_number_description:I

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$drawable;->red_dot_stroke_circle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->p:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_6b

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1e
    return-void
.end method

.method public b(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6f

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    if-eqz v0, :cond_6f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6f

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    if-eq v0, p1, :cond_6f

    if-lez p1, :cond_6f

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    if-nez v0, :cond_1d

    goto :goto_6f

    :cond_1d
    invoke-virtual {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a()V

    iget-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    if-eqz v0, :cond_6c

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->e:I

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    invoke-virtual {v2, v3, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    invoke-virtual {v2, v3, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e(II)I

    move-result p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x205

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$1;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public c(Z)V
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x208

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getIsLaidOut()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    return p0
.end method

.method public getPointMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    return p0
.end method

.method public getPointNumber()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    return p0
.end method

.method public getPointText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->g:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->k:Z

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_25

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->e:I

    if-ge v2, v1, :cond_53

    :cond_25
    iget-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->j:I

    iget v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->e:I

    rsub-int v4, v2, 0xff

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->g:Landroid/graphics/RectF;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v5

    iget v6, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    int-to-float v6, v6

    iget-object v5, v5, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v5, p0, v6}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v6, v1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-le v2, v4, :cond_4c

    invoke-virtual {v1, p1, v0, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    invoke-virtual {v1, p1, v3, v4, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_5e

    :cond_4c
    invoke-virtual {v1, p1, v3, v4, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    invoke-virtual {v1, p1, v0, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_5e

    :cond_53
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    :goto_5e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->m:I

    goto/16 :goto_f0

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_ee

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/16 v4, 0x64

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq p2, v2, :cond_69

    const/4 v1, 0x3

    if-eq p2, v1, :cond_27

    const/4 v0, 0x4

    if-eq p2, v0, :cond_ee

    move p1, v6

    goto/16 :goto_f0

    :cond_27
    iget-object p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_41

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->g:I

    goto/16 :goto_f0

    :cond_41
    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_53

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    goto/16 :goto_f0

    :cond_53
    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_65

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->f:I

    goto/16 :goto_f0

    :cond_65
    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    goto/16 :goto_f0

    :cond_69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_73

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    goto/16 :goto_f0

    :cond_73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7a

    goto :goto_8c

    :cond_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_7e
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_8d

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_7e

    :goto_8c
    move v1, v6

    :cond_8d
    if-eqz v1, :cond_98

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->c(I)I

    move-result p1

    goto :goto_f0

    :cond_98
    iget-object p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_b7

    iget p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_f0

    :cond_b7
    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_ce

    iget p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_f0

    :cond_ce
    iget-object v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_e5

    iget p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->f:I

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_f0

    :cond_e5
    iget p2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_f0

    :cond_ee
    iget p1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->j:I

    :goto_f0
    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBgColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCornerRadius(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    return-void
.end method

.method public setDotDiameter(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->j:I

    return-void
.end method

.method public setEllipsisDiameter(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->k:I

    return-void
.end method

.method public setLargeWidth(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->f:I

    return-void
.end method

.method public setMediumWidth(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    return-void
.end method

.method public setPointMode(I)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    if-eq v0, p1, :cond_26

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_19

    goto :goto_21

    :cond_19
    if-nez p1, :cond_26

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_26

    :cond_21
    :goto_21
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public setPointNumber(I)V
    .registers 8

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    if-eqz p1, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    :goto_11
    if-lez p1, :cond_39

    const-string p1, ","

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->i:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_39
    return-void
.end method

.method public setPointText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSmallWidth(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->c:I

    return-void
.end method

.method public setViewHeight(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->f:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    return-void
.end method

.class public Lcom/coui/appcompat/seekbar/COUISectionSeekBar;
.super Lcom/coui/appcompat/seekbar/COUISeekBar;
.source ""


# instance fields
.field public final P0:Landroid/graphics/PorterDuffXfermode;

.field public Q0:F

.field public R0:F

.field public S0:Z

.field public T0:F

.field public U0:F

.field public V0:Z

.field public W0:Landroid/animation/ValueAnimator;

.field public X0:I

.field public Y0:F

.field public Z0:I

.field public a1:F

.field public b1:F

.field public c1:F

.field public d1:I

.field public e1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/control/R$attr;->couiSectionSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/support/control/R$style;->COUISectionSeekBar_Dark:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/control/R$style;->COUISectionSeekBar:I

    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->P0:Landroid/graphics/PorterDuffXfermode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->S0:Z

    const/high16 p2, -0x40800000  # -1.0f

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->V0:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b1:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->c1:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_section_seekbar_tick_mark_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b1:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->c1:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->d1:I

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->e1:I

    const/4 p2, 0x2

    new-array p3, p2, [I

    aput p1, p3, p1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_seekbar_mark_active_anim_end:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    const-string v0, "activeAlpha"

    invoke-static {v0, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v0, p2, [I

    aput p1, v0, p1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/control/R$color;->coui_seekbar_mark_inactive_anim_end:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aput v2, v0, v1

    const-string v2, "inactiveAlpha"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, p2, p1

    aput-object v0, p2, v1

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    new-instance p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private getMoveSectionWidth()F
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarMoveWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getSectionWidth()F
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarNormalWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getSeekBarMoveWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h0:F

    mul-float/2addr v1, p0

    const/high16 p0, 0x40000000  # 2.0f

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    float-to-int p0, v0

    return p0
.end method

.method private getSeekBarNormalWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static synthetic y(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveSectionWidth()F

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1d

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    :cond_1d
    return-void
.end method

.method public final B(I)F
    .registers 4

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarMoveWidth()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_1c

    sub-float p1, v0, p1

    :cond_1c
    return p1
.end method

.method public final C(Landroid/view/MotionEvent;)F
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final D(FZ)V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarNormalWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1e

    sub-float v0, v1, v0

    :cond_1e
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->v(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    div-float/2addr p1, v1

    if-eqz v2, :cond_2d

    float-to-int p1, p1

    goto :goto_31

    :cond_2d
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_31
    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Q0:F

    int-to-float v3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_58

    :cond_44
    int-to-float p1, p1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->U0:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    sub-float/2addr v1, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->S0:Z

    add-float/2addr p1, v0

    if-eqz p2, :cond_54

    const/16 p2, 0x64

    goto :goto_55

    :cond_54
    const/4 p2, 0x0

    :goto_55
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->E(FFFI)V

    :cond_58
    return-void
.end method

.method public final E(FFFI)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Q0:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_18

    goto :goto_66

    :cond_18
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Q0:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->R0:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_47

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x3e800000  # 0.25f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_47
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v1

    const/4 p3, 0x1

    sub-float/2addr p2, p1

    aput p2, v0, p3

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_66
    :goto_66
    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->S0:Z

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->S0:Z

    :cond_6f
    return-void
.end method

.method public final F(F)V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->v(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const v2, 0x3dcccccd  # 0.1f

    if-gez v1, :cond_10

    sub-float/2addr v0, v2

    goto :goto_11

    :cond_10
    add-float/2addr v0, v2

    :goto_11
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveSectionWidth()F

    move-result v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3b

    neg-int v2, v2

    :cond_3b
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->U0:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_54

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    add-float/2addr v3, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Y0:F

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->E(FFFI)V

    goto :goto_65

    :cond_54
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->U0:F

    const v2, 0x3f19999a  # 0.6f

    invoke-static {v1, v3, v2, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :goto_65
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    return-void
.end method

.method public b(I)V
    .registers 8

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_c

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    goto :goto_f

    :cond_c
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_f
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:F

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    float-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const v0, 0x43f18000  # 483.0f

    mul-float/2addr p1, v0

    float-to-long v2, p1

    const-wide/16 v4, 0x96

    cmp-long p1, v2, v4

    if-gez p1, :cond_47

    move-wide v2, v4

    :cond_47
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;F)V
    .registers 16

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr p2, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    add-float/2addr p2, v3

    goto :goto_37

    :cond_2c
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr p2, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    add-float/2addr v2, p2

    :goto_37
    iget-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v3, :cond_95

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    int-to-float v4, v1

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float v6, v4, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, p2, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float v3, v0, v2

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000  # -90.0f

    const/high16 v9, 0x43340000  # 180.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_95

    :cond_78
    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float v4, p2, v3

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v3

    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v6, p2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Landroid/graphics/RectF;

    const/high16 v9, 0x42b40000  # 90.0f

    const/high16 v10, 0x43340000  # 180.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_95
    :goto_95
    const/16 p2, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p2

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->P0:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v3, :cond_b3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_b0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->e1:I

    goto :goto_b5

    :cond_b0
    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->d1:I

    goto :goto_b5

    :cond_b3
    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->e1:I

    :goto_b5
    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_c5
    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    if-gt v4, v6, :cond_106

    iget-boolean v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v7, :cond_f4

    if-nez v5, :cond_f4

    int-to-float v7, v4

    mul-float/2addr v7, v0

    int-to-float v6, v6

    div-float/2addr v7, v6

    add-float/2addr v7, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v6, v8

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    add-float/2addr v6, v8

    cmpl-float v6, v7, v6

    if-lez v6, :cond_f4

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_ee

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->d1:I

    goto :goto_f0

    :cond_ee
    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->e1:I

    :goto_f0
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x1

    :cond_f4
    int-to-float v6, v4

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    int-to-float v7, v1

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->c1:F

    iget-object v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    :cond_106
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:F

    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    if-eqz p2, :cond_139

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, p2

    int-to-float p2, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_139
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .registers 13

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A()V

    :cond_b
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    invoke-super {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->f(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->P0:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    iget-boolean v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v5, :cond_46

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_43

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    goto :goto_48

    :cond_43
    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    goto :goto_48

    :cond_46
    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    :goto_48
    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_4f
    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    if-gt v5, v7, :cond_8d

    iget-boolean v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v8, :cond_7b

    if-nez v6, :cond_7b

    int-to-float v8, v5

    mul-float/2addr v8, v4

    int-to-float v7, v7

    div-float/2addr v8, v7

    add-float/2addr v8, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v7

    int-to-float v7, v7

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    add-float/2addr v7, v9

    cmpl-float v7, v8, v7

    if-lez v7, :cond_7b

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_75

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    goto :goto_77

    :cond_75
    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    :goto_77
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x1

    :cond_7b
    int-to-float v7, v5

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v3

    int-to-float v8, v0

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b1:F

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_8d
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public j(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->C(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    return-void
.end method

.method public k(Landroid/view/MotionEvent;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->C(Landroid/view/MotionEvent;)F

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3e

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    sub-float p1, v0, p1

    cmpl-float v1, p1, v5

    if-lez v1, :cond_16

    move v2, v4

    goto :goto_1c

    :cond_16
    cmpg-float p1, p1, v5

    if-gez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->X0:I

    neg-int p1, p1

    if-ne v2, p1, :cond_3a

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->X0:I

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq p1, v1, :cond_33

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    iput v5, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Y0:F

    :cond_33
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3a
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->F(F)V

    goto :goto_ae

    :cond_3e
    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->w(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_45

    return-void

    :cond_45
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_ae

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->t()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_64
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_78

    int-to-float v6, v1

    sub-float p1, v6, p1

    :cond_78
    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    int-to-float v6, v6

    mul-float/2addr p1, v6

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    invoke-virtual {p0, p1, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->d(IZ)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Z0:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->a1:F

    iput v5, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Y0:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->F(F)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    sub-float p1, v0, p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_ac

    move v2, v4

    :cond_ac
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->X0:I

    :cond_ae
    :goto_ae
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    return-void
.end method

.method public l(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->C(Landroid/view/MotionEvent;)F

    move-result p1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->W0:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->V0:Z

    :cond_16
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->V0:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->D(FZ)V

    :cond_1d
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->q()V

    goto :goto_31

    :cond_28
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->D(FZ)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->a(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->q()V

    :goto_31
    return-void
.end method

.method public m(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->m(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b1:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->c1:F

    return-void
.end method

.method public o()Z
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    const/16 v7, 0xc8

    const/16 v8, 0x7d0

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    return v2
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    return-void
.end method

.method public p()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->performHapticFeedback(I)Z

    :cond_21
    return-void
.end method

.method public q()V
    .registers 9

    invoke-super {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->q()V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->c1:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b1:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "markRadius"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [I

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->d1:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    aput v6, v3, v4

    aput v4, v3, v5

    const-string v6, "activeAlpha"

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v1, [I

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->e1:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    aput v7, v6, v4

    aput v4, v6, v5

    const-string v7, "inactiveAlpha"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v1

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$5;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public r(IZZ)V
    .registers 6

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq p3, v0, :cond_2e

    if-eqz p2, :cond_1b

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->d(IZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->b(I)V

    goto :goto_2e

    :cond_1b
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->d(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->T0:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->Q0:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setMax(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    :cond_a
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    if-eq p1, v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-le v0, p1, :cond_18

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_18
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A()V

    :cond_1b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

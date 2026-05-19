.class public Lcom/coui/appcompat/chip/COUIChip;
.super Lcom/google/android/material/chip/Chip;
.source ""


# static fields
.field public static final D:[I

.field public static final E:[I

.field public static final F:[I


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/graphics/RectF;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/view/animation/Interpolator;

.field public s:Landroid/view/animation/Interpolator;

.field public t:[I

.field public u:[[I

.field public v:[I

.field public w:[[I

.field public x:[I

.field public y:Z

.field public z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/coui/appcompat/chip/COUIChip;->D:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/coui/appcompat/chip/COUIChip;->E:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/chip/COUIChip;->F:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_24
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/chip/COUIChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/control/R$attr;->couiChipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/chip/COUIChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    sget v0, Lcom/support/control/R$style;->Widget_COUI_Chip:I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->j:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/chip/COUIChip;->y:Z

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/chip/COUIChip;->C:Landroid/graphics/RectF;

    if-eqz p2, :cond_23

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v2, Lcom/support/control/R$styleable;->COUIChip:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/control/R$styleable;->COUIChip_chipAnimationEnable:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/chip/COUIChip;->k:Z

    sget p3, Lcom/support/control/R$styleable;->COUIChip_checkedBackgroundColor:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    sget p3, Lcom/support/control/R$styleable;->COUIChip_uncheckedBackgroundColor:I

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    sget p3, Lcom/support/control/R$styleable;->COUIChip_checkedTextColor:I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/control/R$color;->chip_checked_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    sget p3, Lcom/support/control/R$styleable;->COUIChip_uncheckedTextColor:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    sget p3, Lcom/support/control/R$styleable;->COUIChip_disabledTextColor:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDisabledNeutral:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->e:I

    sget p3, Lcom/support/control/R$styleable;->COUIChip_openCheckedTextFontFamily:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/chip/COUIChip;->m:Z

    sget p3, Lcom/support/control/R$styleable;->COUIChip_checkedFontFamily:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/chip/COUIChip;->n:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/coui/appcompat/chip/COUIChip;->m:Z

    if-eqz v0, :cond_9c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9c

    const-string/jumbo p3, "sans-serif-medium"

    iput-object p3, p0, Lcom/coui/appcompat/chip/COUIChip;->n:Ljava/lang/String;

    :cond_9c
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/chip/COUIChip;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result p3

    if-eqz p3, :cond_af

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->f()V

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->g()V

    :cond_af
    iget-boolean p3, p0, Lcom/coui/appcompat/chip/COUIChip;->k:Z

    if-eqz p3, :cond_e1

    new-instance p3, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/chip/COUIChip;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result p3

    if-eqz p3, :cond_e1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_c9

    iget p3, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    goto :goto_cb

    :cond_c9
    iget p3, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    :goto_cb
    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_d6

    iget p3, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    goto :goto_d8

    :cond_d6
    iget p3, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    :goto_d8
    iput p3, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    new-instance p3, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/chip/COUIChip;->s:Landroid/view/animation/Interpolator;

    :cond_e1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    const/4 v2, 0x0

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot:[I

    const/4 v4, 0x0

    sget v5, Lcom/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p2, p0, Lcom/coui/appcompat/chip/COUIChip;->z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_chip_red_dot_offset_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/chip/COUIChip;->A:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_chip_red_dot_offset_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->B:I

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/chip/COUIChip;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/chip/COUIChip;->setScale(F)V

    return-void
.end method

.method private setScale(F)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f666666  # 0.9f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/chip/COUIChip;->m:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/coui/appcompat/chip/COUIChip;->n:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_17

    :cond_12
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_17
    return-void
.end method

.method public final c(Z)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_25

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    goto :goto_32

    :cond_25
    new-array v3, v3, [I

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    aput v4, v3, v2

    iget v2, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :goto_32
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/chip/COUIChip$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/chip/COUIChip$2;-><init>(Lcom/coui/appcompat/chip/COUIChip;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/chip/COUIChip$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/chip/COUIChip$3;-><init>(Lcom/coui/appcompat/chip/COUIChip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final d(Z)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/chip/COUIChip;->l:Z

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_32

    if-nez p1, :cond_28

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-float v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x3f4ccccd  # 0.8f

    mul-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    move v1, v0

    :goto_29
    iput-boolean v1, p0, Lcom/coui/appcompat/chip/COUIChip;->l:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_49

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_49
    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5a

    if-eqz p1, :cond_5a

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5a
    iget-boolean v1, p0, Lcom/coui/appcompat/chip/COUIChip;->l:Z

    if-eqz v1, :cond_5f

    return-void

    :cond_5f
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_68

    move v4, v3

    goto :goto_6a

    :cond_68
    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->j:F

    :goto_6a
    aput v4, v1, v0

    if-eqz p1, :cond_71

    const v3, 0x3f666666  # 0.9f

    :cond_71
    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_85

    const-wide/16 v1, 0xc8

    goto :goto_87

    :cond_85
    const-wide/16 v1, 0x154

    :goto_87
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/chip/COUIChip$1;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/chip/COUIChip$1;-><init>(Lcom/coui/appcompat/chip/COUIChip;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final e(Z)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_25

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    goto :goto_32

    :cond_25
    new-array v3, v3, [I

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    aput v4, v3, v2

    iget v2, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :goto_32
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/chip/COUIChip$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/chip/COUIChip$4;-><init>(Lcom/coui/appcompat/chip/COUIChip;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/chip/COUIChip$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/chip/COUIChip$5;-><init>(Lcom/coui/appcompat/chip/COUIChip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->u:[[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->u:[[I

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->v:[I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->u:[[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->v:[I

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->u:[[I

    sget-object v1, Lcom/coui/appcompat/chip/COUIChip;->E:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/coui/appcompat/chip/COUIChip;->D:[I

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->v:[I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    aput v1, v0, v3

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->u:[[I

    iget-object v2, p0, Lcom/coui/appcompat/chip/COUIChip;->v:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final g()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->w:[[I

    if-nez v0, :cond_9

    const/4 v0, 0x3

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->w:[[I

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->x:[I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->w:[[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->x:[I

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->w:[[I

    sget-object v1, Lcom/coui/appcompat/chip/COUIChip;->E:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/coui/appcompat/chip/COUIChip;->D:[I

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/coui/appcompat/chip/COUIChip;->F:[I

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->x:[I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    aput v1, v0, v3

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->e:I

    aput v1, v0, v4

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->w:[[I

    iget-object v2, p0, Lcom/coui/appcompat/chip/COUIChip;->x:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/chip/COUIChip;->y:Z

    if-eqz v0, :cond_fc

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_fc

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e(II)I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/chip/COUIChip;->z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_52

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_52

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipIconSize()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getIconStartPadding()F

    move-result v8

    add-float/2addr v8, v6

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getIconEndPadding()F

    move-result v6

    add-float/2addr v6, v8

    add-float/2addr v6, v7

    goto :goto_53

    :cond_52
    move v6, v7

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_6f

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconSize()F

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconStartPadding()F

    move-result v9

    add-float/2addr v9, v8

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconEndPadding()F

    move-result v8

    add-float/2addr v8, v9

    add-float/2addr v8, v7

    goto :goto_70

    :cond_6f
    move v8, v7

    :goto_70
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getTextEndPadding()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getTextStartPadding()F

    move-result v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v6

    sub-float/2addr v9, v8

    sub-float/2addr v9, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v9, v5

    cmpl-float v5, v8, v7

    if-lez v5, :cond_8e

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconEndPadding()F

    move-result v5

    goto :goto_92

    :cond_8e
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getTextEndPadding()F

    move-result v5

    :goto_92
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    cmpl-float v5, v9, v7

    if-lez v5, :cond_9d

    move v7, v9

    :cond_9d
    sub-float/2addr v6, v7

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->A:I

    int-to-float v5, v5

    add-float/2addr v6, v5

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v1, :cond_a9

    move v3, v1

    :cond_a9
    if-eqz v3, :cond_b4

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v6

    int-to-float v5, v0

    sub-float v6, v3, v5

    :cond_b4
    int-to-float v0, v0

    add-float/2addr v0, v6

    iget-object v3, p0, Lcom/coui/appcompat/chip/COUIChip;->C:Landroid/graphics/RectF;

    iput v6, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->B:I

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->top:F

    iput v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v0, v4

    add-float/2addr v5, v0

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollX()I

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollY()I

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    goto :goto_fc

    :cond_d9
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip;->z:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget-object v3, p0, Lcom/coui/appcompat/chip/COUIChip;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getScrollY()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_fc
    :goto_fc
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11e

    iget-boolean v1, p0, Lcom/coui/appcompat/chip/COUIChip;->k:Z

    if-eqz v1, :cond_11e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11b

    if-eq v1, v2, :cond_1c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1c

    goto/16 :goto_11e

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_117

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v4, :cond_60

    check-cast v1, Lcom/google/android/material/chip/ChipGroup;

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    if-ne v4, v5, :cond_39

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v6, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    if-eq v5, v6, :cond_43

    :cond_39
    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    if-ne v4, v5, :cond_45

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    if-ne v4, v5, :cond_45

    :cond_43
    move v4, v2

    goto :goto_46

    :cond_45
    move v4, v3

    :goto_46
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipGroup;->isSelectionRequired()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_60

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz v4, :cond_60

    move v1, v3

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    aget v4, v4, v3

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    aget v4, v4, v3

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_a8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    aget v4, v4, v2

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_a8

    move v1, v2

    goto :goto_a9

    :cond_a8
    move v1, v3

    :goto_a9
    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    iget v5, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    if-eq v4, v5, :cond_c0

    iget v6, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    if-eq v4, v6, :cond_c0

    iget v4, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v6, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    if-eq v4, v6, :cond_c0

    iget v6, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    if-ne v4, v6, :cond_be

    goto :goto_c0

    :cond_be
    move v4, v3

    goto :goto_c1

    :cond_c0
    :goto_c0
    move v4, v2

    :goto_c1
    if-eqz v1, :cond_fd

    if-eqz v4, :cond_e5

    if-eqz v0, :cond_d6

    iput v5, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    goto :goto_f6

    :cond_d6
    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    iput v5, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    goto :goto_f6

    :cond_e5
    if-eqz v0, :cond_f0

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    goto :goto_f6

    :cond_f0
    iput v5, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    :goto_f6
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/chip/COUIChip;->c(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/chip/COUIChip;->e(Z)V

    goto :goto_117

    :cond_fd
    if-nez v4, :cond_117

    if-eqz v0, :cond_108

    iput v5, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    goto :goto_110

    :cond_108
    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->g:I

    iget v1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    iput v1, p0, Lcom/coui/appcompat/chip/COUIChip;->i:I

    :goto_110
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/chip/COUIChip;->c(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/chip/COUIChip;->e(Z)V

    :cond_117
    :goto_117
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/chip/COUIChip;->d(Z)V

    goto :goto_11e

    :cond_11b
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/chip/COUIChip;->d(Z)V

    :cond_11e
    :goto_11e
    invoke-super {p0, p1}, Lcom/google/android/material/chip/Chip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/chip/COUIChip;->b(Z)V

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    return-void
.end method

.method public setCheckedBackgroundColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->f()V

    :cond_9
    return-void
.end method

.method public setCheckedTextColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->g()V

    :cond_9
    return-void
.end method

.method public setDisabledTextColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->e:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->e:I

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->g()V

    :cond_9
    return-void
.end method

.method public setShowRedDot(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/chip/COUIChip;->y:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public setUncheckedBackgroundColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->f()V

    :cond_9
    return-void
.end method

.method public setUncheckedTextColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->g()V

    :cond_9
    return-void
.end method

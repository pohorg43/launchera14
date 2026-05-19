.class public Lcom/coui/appcompat/couiswitch/COUISwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;
    }
.end annotation


# instance fields
.field public A:I

.field public B:F

.field public C:F

.field public D:I

.field public E:I

.field public F:Z

.field public G:F

.field public H:Landroid/graphics/Paint;

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a:Z

.field public a0:I

.field public b:Z

.field public b0:I

.field public c:Z

.field public c0:Z

.field public d:Z

.field public d0:Z

.field public e:Ljava/lang/String;

.field public e0:Ljava/util/concurrent/ExecutorService;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

.field public i:Landroid/view/accessibility/AccessibilityManager;

.field public j:Landroid/animation/AnimatorSet;

.field public k:Landroid/animation/AnimatorSet;

.field public l:Landroid/animation/AnimatorSet;

.field public m:Landroid/animation/AnimatorSet;

.field public n:F

.field public o:F

.field public p:F

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:I

.field public x:Landroid/graphics/RectF;

.field public y:Landroid/graphics/RectF;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    iput-boolean v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->y:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->C:F

    iput-boolean v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c0:Z

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_50

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:I

    goto :goto_52

    :cond_50
    iput v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:I

    :goto_52
    sget-object v6, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x3e99999a  # 0.3f

    const v3, 0x3dcccccd  # 0.1f

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v7

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Landroid/animation/AnimatorSet;

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_140

    const-string v10, "circleScale"

    invoke-static {v0, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x1b1

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v8, [F

    fill-array-data v10, :array_148

    const-string v11, "loadingScale"

    invoke-static {v0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x226

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v13, v8, [F

    fill-array-data v13, :array_150

    const-string v14, "loadingAlpha"

    invoke-static {v0, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v7, v8, [F

    fill-array-data v7, :array_158

    const-string v11, "loadingRotation"

    invoke-static {v0, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v12, -0x1

    invoke-virtual {v7, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v2, 0x320

    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v15, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v15}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v7, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v15, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const v7, 0x3e99999a  # 0.3f

    const v9, 0x3dcccccd  # 0.1f

    invoke-static {v7, v6, v9, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Landroid/animation/AnimatorSet;

    new-array v7, v8, [F

    fill-array-data v7, :array_160

    invoke-static {v0, v14, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/animation/AnimatorSet;

    new-array v5, v8, [F

    fill-array-data v5, :array_168

    invoke-static {v0, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    const/16 v2, 0x19

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000  # 8.0f

    const/high16 v7, 0x40800000  # 4.0f

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->c(Landroid/content/Context;)V

    return-void

    nop

    :array_140
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_148
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_150
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_158
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data

    :array_160
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_168
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data
.end method

.method private getBarColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    return p0
.end method

.method private setBarColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    :goto_f
    return-object p0

    :cond_10
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    :goto_1b
    return-object p0
.end method

.method public final b(Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .registers 5

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_loadingDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_barHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleStrokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->D:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_circlePadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->Q:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerUnCheckedCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->T:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUISwitch_barUncheckedDisabledColor:I

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p2, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p2

    const v1, 0x4dffffff  # 5.3687088E8f

    and-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$bool;->coui_switch_theme_enable:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:Z

    if-eqz p2, :cond_a9

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->r:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedCheckedDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUISwitch_themedUncheckedDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    :cond_a9
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_switch_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->switch_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_57

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    goto :goto_59

    :cond_57
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    :goto_59
    iput v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    sget v0, Lcom/support/appcompat/R$color;->coui_color_press_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public e()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->switch_custom_track_on:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$drawable;->switch_custom_track_off:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$drawable;->switch_custom_track_on_disable:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$drawable;->switch_custom_track_off_disable:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    const/4 v6, 0x2

    if-eqz v5, :cond_46

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v5, v6, [I

    fill-array-data v5, :array_b2

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_4e

    :cond_46
    new-array v5, v6, [I

    fill-array-data v5, :array_ba

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_4e
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    if-eqz v0, :cond_66

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v6, [I

    fill-array-data v1, :array_c2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_6e

    :cond_66
    new-array v0, v6, [I

    fill-array-data v0, :array_ca

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_6e
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    if-eqz v0, :cond_86

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v6, [I

    fill-array-data v1, :array_d2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_8e

    :cond_86
    new-array v0, v6, [I

    fill-array-data v0, :array_da

    invoke-virtual {v4, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_8e
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    if-eqz v0, :cond_a6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v6, [I

    fill-array-data v1, :array_e2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_ae

    :cond_a6
    new-array v0, v6, [I

    fill-array-data v0, :array_ea

    invoke-virtual {v4, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_ae
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_b2
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_ba
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_c2
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data

    :array_ca
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data

    :array_d2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_da
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_e2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_ea
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public f()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_25

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_25
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStartLoading()V

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2f
    return-void
.end method

.method public g()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Ljava/lang/String;

    goto :goto_19

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Ljava/lang/String;

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2b
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3a
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_47
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleScale(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz p0, :cond_59

    invoke-interface {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStopLoading()V

    :cond_59
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOuterCircleUncheckedColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 6

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/support/appcompat/R$raw;->coui_switch_sound_on:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/support/appcompat/R$raw;->coui_switch_sound_off:I

    aput v2, v1, v0

    sget-boolean v2, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->d:Z

    const-string v3, "COUIAsyncSoundUtil"

    if-eqz v2, :cond_22

    const-string/jumbo v4, "register, sound file num: 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    sget-object v4, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->e:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    if-nez v4, :cond_34

    if-eqz v2, :cond_2d

    const-string v2, "init util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v2, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->e:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    :cond_34
    invoke-static {v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->a(I)Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    move-result-object p0

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/reddot/a;-><init>([I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:Z

    const/high16 v1, 0x437f0000  # 255.0f

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_18

    :cond_16
    const/high16 v2, 0x3f000000  # 0.5f

    :goto_18
    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-nez v0, :cond_3c

    goto/16 :goto_1d4

    :cond_3c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1d4

    :cond_85
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    goto :goto_ed

    :cond_a3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    goto :goto_f2

    :cond_bd
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    goto :goto_f2

    :cond_df
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    :goto_ed
    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_f2
    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->D:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->y:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12e

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_13c

    :cond_12e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_137

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    goto :goto_139

    :cond_137
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    :goto_139
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_13c
    :goto_13c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->C:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15b

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->Q:I

    goto :goto_15d

    :cond_15b
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    :goto_15d
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_176

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_171

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->T:I

    goto :goto_173

    :cond_171
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    :goto_173
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_176
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-nez v0, :cond_189

    goto :goto_1d4

    :cond_189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->n:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d1

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1d1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1d4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Ljava/lang/String;

    :goto_16
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Ljava/lang/String;

    goto :goto_25

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Ljava/lang/String;

    :goto_25
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_28
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->onMeasure(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c0:Z

    if-nez p1, :cond_44

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    :goto_2b
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    goto :goto_38

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_36

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    :cond_36
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    :goto_38
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    goto :goto_42

    :cond_40
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_42
    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:F

    :cond_44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b:Z

    :cond_b
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->f()V

    return v2

    :cond_20
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-eqz v0, :cond_25

    return v2

    :cond_25
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setBarCheckedColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->e()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public final setBarCheckedDisabledColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->e()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public final setBarUnCheckedColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_c

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->e()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public final setBarUncheckedDisabledColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->e()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_8

    goto/16 :goto_171

    :cond_8
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_104

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_26
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:Z

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_38

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    :cond_38
    const v0, 0x3e99999a  # 0.3f

    const v5, 0x3dcccccd  # 0.1f

    invoke-static {v0, v4, v5, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()Z

    move-result v6

    if-eqz v6, :cond_50

    if-eqz p1, :cond_4d

    goto :goto_55

    :cond_4d
    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    goto :goto_56

    :cond_50
    if-eqz p1, :cond_55

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    goto :goto_56

    :cond_55
    :goto_55
    move v6, v2

    :goto_56
    iget-object v7, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v7, v0, [F

    fill-array-data v7, :array_172

    const-string v8, "circleScaleX"

    invoke-static {p0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v9, 0x85

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v11, v0, [F

    fill-array-data v11, :array_17a

    invoke-static {p0, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v0, [I

    aput v5, v9, v2

    aput v6, v9, v1

    const-string v5, "circleTranslation"

    invoke-static {p0, v5, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x17f

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:F

    if-eqz p1, :cond_93

    move v3, v4

    :cond_93
    new-array v4, v0, [F

    aput v6, v4, v2

    aput v3, v4, v1

    const-string v3, "innerCircleAlpha"

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x64

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->getBarColor()I

    move-result v4

    if-eqz p1, :cond_ad

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    goto :goto_af

    :cond_ad
    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    :goto_af
    new-array v0, v0, [I

    aput v4, v0, v2

    aput v6, v0, v1

    const-string v4, "barColor"

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v9, 0x1c2

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_104

    :cond_db
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_eb

    if-eqz p1, :cond_e5

    move v0, v2

    goto :goto_e7

    :cond_e5
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    :goto_e7
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    goto :goto_f4

    :cond_eb
    if-eqz p1, :cond_f0

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->A:I

    goto :goto_f1

    :cond_f0
    move v0, v2

    :goto_f1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    :goto_f4
    if-eqz p1, :cond_f7

    move v3, v4

    :cond_f7
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_ff

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    goto :goto_101

    :cond_ff
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    :goto_101
    invoke-direct {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarColor(I)V

    :cond_104
    :goto_104
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Z

    if-eqz v0, :cond_153

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:Z

    if-eqz v0, :cond_153

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_115

    sget p1, Lcom/support/appcompat/R$raw;->coui_switch_sound_on:I

    goto :goto_117

    :cond_115
    sget p1, Lcom/support/appcompat/R$raw;->coui_switch_sound_off:I

    :goto_117
    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    sget-object v3, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->e:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    iget-object v3, v3, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->c:Landroid/media/SoundPool;

    if-eqz v3, :cond_151

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sound_effects_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_133

    goto :goto_134

    :cond_133
    move v1, v2

    :goto_134
    if-eqz v1, :cond_151

    sget-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->e:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    iget-object v1, v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sget-boolean p1, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->d:Z

    if-eqz p1, :cond_14a

    const-string/jumbo p1, "soundId = "

    const-string v1, "COUIAsyncSoundUtil"

    invoke-static {p1, v4, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_14a
    if-eqz v4, :cond_151

    iget-object v3, v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->c:Landroid/media/SoundPool;

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_151
    iput-boolean v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Z

    :cond_153
    iget-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b:Z

    if-eqz p1, :cond_16e

    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_161

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:Ljava/util/concurrent/ExecutorService;

    :cond_161
    iget-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$1;-><init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_16e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_171
    return-void

    :array_172
    .array-data 4
        0x3f800000  # 1.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_17a
    .array-data 4
        0x3fa66666  # 1.3f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCircleScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->C:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->B:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    :cond_f
    if-eqz p1, :cond_23

    const/16 p1, 0x19

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000  # 8.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000  # 4.0f

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_28

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_28
    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setInnerCircleColor(I)V
    .registers 2

    return-void
.end method

.method public setLoadingAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingRotation(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->n:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    return-void
.end method

.method public setOuterCircleColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->Q:I

    return-void
.end method

.method public setOuterCircleStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->D:I

    return-void
.end method

.method public final setOuterCircleUncheckedColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b:Z

    return-void
.end method

.method public setThemedLoadingCheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThemedLoadingUncheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setUncheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    return-void
.end method

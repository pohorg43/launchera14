.class public Lcom/coui/appcompat/seekbar/COUISeekBar;
.super Landroid/widget/AbsSeekBar;
.source ""

# interfaces
.implements Lcom/oplus/physicsengine/engine/AnimationListener;
.implements Lcom/oplus/physicsengine/engine/AnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;
    }
.end annotation


# instance fields
.field public A:F

.field public A0:I

.field public B:F

.field public B0:Lcom/coui/appcompat/seekbar/TextDrawable;

.field public C:Z

.field public C0:Z

.field public D:F

.field public D0:Ljava/util/concurrent/ExecutorService;

.field public E:F

.field public E0:I

.field public F:F

.field public F0:I

.field public G:F

.field public G0:I

.field public H:Landroid/graphics/Bitmap;

.field public H0:I

.field public I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

.field public J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

.field public K0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

.field public L0:F

.field public M0:F

.field public N:Z

.field public N0:F

.field public O:Landroid/text/TextPaint;

.field public O0:F

.field public P:Landroid/graphics/Paint$FontMetricsInt;

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:F

.field public T:Landroid/graphics/Path;

.field public U:Landroid/graphics/RectF;

.field public V:Landroid/graphics/RectF;

.field public W:Landroid/graphics/RectF;

.field public a:F

.field public a0:Landroid/animation/AnimatorSet;

.field public b:Z

.field public b0:Landroid/animation/AnimatorSet;

.field public c:Z

.field public c0:F

.field public d:Z

.field public d0:Landroid/graphics/Paint;

.field public e:Ljava/lang/Object;

.field public e0:F

.field public f:I

.field public f0:Landroid/view/animation/Interpolator;

.field public g:F

.field public g0:Landroid/view/animation/Interpolator;

.field public h:I

.field public h0:F

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:Z

.field public k:I

.field public k0:La2/d;

.field public l:Z

.field public l0:I

.field public m:Landroid/content/res/ColorStateList;

.field public m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

.field public n:Landroid/content/res/ColorStateList;

.field public n0:Z

.field public o:Landroid/content/res/ColorStateList;

.field public o0:Landroid/graphics/RectF;

.field public p:I

.field public p0:I

.field public q:I

.field public q0:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

.field public r:I

.field public r0:I

.field public s:F

.field public s0:F

.field public t:F

.field public t0:La2/e;

.field public u:F

.field public u0:Landroid/view/VelocityTracker;

.field public v:F

.field public v0:Z

.field public w:F

.field public w0:F

.field public x:F

.field public x0:Landroid/view/animation/Interpolator;

.field public y:F

.field public y0:I

.field public z:F

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/control/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/support/control/R$style;->COUISeekBar_Dark:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/control/R$style;->COUISeekBar:I

    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C:Z

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Landroid/graphics/RectF;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    const v2, 0x3ea8f5c3  # 0.33f

    const v4, 0x3f2b851f  # 0.67f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v2, v0, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Landroid/view/animation/Interpolator;

    const v2, 0x3e99999a  # 0.3f

    const v4, 0x3dcccccd  # 0.1f

    invoke-static {v2, v0, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g0:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Landroid/graphics/RectF;

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    const-wide v6, 0x407f400000000000L  # 500.0

    const-wide/high16 v8, 0x403e000000000000L  # 30.0

    invoke-static {v6, v7, v8, v9}, La2/e;->b(DD)La2/e;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t0:La2/e;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    invoke-static {v2, v0, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x0:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L0:F

    const/high16 v2, 0x40b00000  # 5.5f

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M0:F

    const v2, 0x3f8ccccd  # 1.1f

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N0:F

    const/high16 v2, 0x41700000  # 15.0f

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O0:F

    if-eqz p2, :cond_a5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y0:I

    :cond_a5
    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y0:I

    if-nez v2, :cond_ab

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y0:I

    :cond_ab
    invoke-virtual {p0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v2, Lcom/support/control/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarAdaptiveVibrator:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarPhysicsEnable:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarShowProgress:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarShowThumb:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarStartMiddle:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressFull:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/support/control/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p0, p0, p2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/support/control/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p0, p0, p2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p0, p0, p2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarShadowColor:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/support/control/R$color;->coui_seekbar_shadow_color:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/support/control/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarBackgroundRadius:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$dimen;->coui_seekbar_background_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressRadius:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$dimen;->coui_seekbar_progress_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarShadowSize:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarThumbShadowSize:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarInnerShadowSize:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$dimen;->coui_seekbar_progress_padding_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarBackgroundHeight:I

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    const/high16 p4, 0x40000000  # 2.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressHeight:I

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarMinHeight:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$dimen;->coui_seekbar_view_min_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarMaxWidth:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A0:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarBackGroundEnlargeScale:I

    const/high16 p3, 0x40c00000  # 6.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarProgressEnlargeScale:I

    const/high16 p3, 0x40800000  # 4.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarShowText:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Ljava/lang/String;

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarTextColor:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$color;->coui_seekbar_text_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    sget p2, Lcom/support/control/R$styleable;->COUISeekBar_couiSeekBarTextMarginTop:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/control/R$dimen;->coui_seekbar_text_margin_top:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->S:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coui/appcompat/seekbar/TextDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B0:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    new-instance p1, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_seekbar_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    const/high16 p2, 0x41c80000  # 25.0f

    const/high16 p3, 0x41000000  # 8.0f

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->s()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_2c8

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xb7

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/seekbar/COUISeekBar$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_2c8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFastMoveSpring()La2/d;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:La2/d;

    if-nez v0, :cond_20

    if-eqz v0, :cond_7

    goto :goto_20

    :cond_7
    invoke-static {}, La2/i;->b()La2/i;

    move-result-object v0

    invoke-virtual {v0}, La2/i;->c()La2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:La2/d;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t0:La2/e;

    invoke-virtual {v0, v1}, La2/d;->f(La2/e;)La2/d;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:La2/d;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, La2/d;->a(La2/g;)La2/d;

    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:La2/d;

    return-object p0
.end method

.method private getNormalSeekBarWidth()I
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


# virtual methods
.method public a(F)V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    goto :goto_2c

    :cond_23
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v0

    div-float v1, p1, v2

    :goto_2c
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V

    return-void
.end method

.method public b(I)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_14

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_17
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_29

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_2a

    :cond_29
    move v4, v3

    :goto_2a
    cmpl-float v5, v4, v3

    if-lez v5, :cond_72

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    int-to-float v7, v0

    mul-float/2addr v7, v4

    aput v7, v5, v6

    const/4 v6, 0x1

    int-to-float v7, p1

    mul-float/2addr v7, v4

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g0:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/coui/appcompat/seekbar/COUISeekBar$4;

    invoke-direct {v6, p0, v4, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;FI)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-lez v2, :cond_57

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float v3, p1, v0

    :cond_57
    const p1, 0x43f18000  # 483.0f

    mul-float/2addr v3, p1

    float-to-long v0, v3

    const-wide/16 v2, 0x96

    cmp-long p1, v0, v2

    if-gez p1, :cond_63

    move-wide v0, v2

    :cond_63
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_72
    return-void
.end method

.method public final c(F)F
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x0:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000  # 2.0f

    div-float v2, v0, v2

    sub-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const v1, 0x3ecccccd  # 0.4f

    if-gtz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_3b

    cmpg-float p0, v2, v1

    if-gez p0, :cond_3c

    :cond_3b
    move v2, v1

    :cond_3c
    return v2
.end method

.method public d(IZ)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v0, p1, :cond_16

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_11
    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_16
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e(Landroid/graphics/Canvas;F)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v10

    iget-boolean v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    const/high16 v11, 0x40000000  # 2.0f

    if-nez v1, :cond_1a

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float/2addr v1, v2

    mul-float/2addr v2, v11

    add-float v2, v2, p2

    move v3, v2

    move v4, v3

    move v2, v1

    goto :goto_34

    :cond_1a
    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    div-float v3, v2, v11

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    mul-float/2addr v4, v11

    sub-float/2addr v2, v4

    sub-float v2, p2, v2

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float/2addr v1, v4

    mul-float/2addr v4, v11

    add-float v4, v4, p2

    move/from16 v16, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v16

    :goto_34
    iget-object v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    int-to-float v12, v10

    iget v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    div-float v7, v6, v11

    sub-float v7, v12, v7

    iput v7, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v6, v11

    add-float/2addr v6, v12

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    iget-boolean v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    if-eqz v5, :cond_83

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    if-eqz v1, :cond_67

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-static {v5, v2, v3, v1}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    div-float/2addr v4, v11

    sub-float v5, v1, v4

    iput v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    move v3, v2

    goto :goto_c8

    :cond_67
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-static {v5, v2, v3, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    div-float/2addr v4, v11

    sub-float v5, v1, v4

    iput v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto :goto_c7

    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    add-float v1, v5, v3

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v5, v3

    sub-float v3, v1, v5

    iget-object v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    iput v5, v2, Landroid/graphics/RectF;->left:F

    move v2, v3

    goto :goto_c8

    :cond_aa
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    iput v6, v3, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    move v2, v1

    move v1, v5

    :goto_c7
    move v3, v1

    :goto_c8
    iget-boolean v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    const/4 v13, 0x0

    if-eqz v4, :cond_187

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H0:I

    if-lez v4, :cond_124

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_124

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H0:I

    int-to-float v5, v5

    iget v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E0:I

    invoke-virtual {v4, v5, v13, v13, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H0:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v6, v2, v5

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float/2addr v6, v7

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    div-float/2addr v8, v11

    sub-float v14, v12, v8

    sub-float/2addr v14, v5

    add-float v15, v5, v1

    add-float/2addr v15, v7

    add-float/2addr v8, v12

    add-float/2addr v8, v5

    invoke-virtual {v4, v6, v14, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_124
    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    if-eqz v4, :cond_13f

    cmpl-float v4, v2, v1

    if-lez v4, :cond_13f

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    div-float/2addr v5, v11

    sub-float v6, v12, v5

    add-float/2addr v5, v12

    invoke-virtual {v4, v1, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_14a

    :cond_13f
    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    div-float/2addr v5, v11

    sub-float v6, v12, v5

    add-float/2addr v5, v12

    invoke-virtual {v4, v2, v6, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_14a
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:Landroid/graphics/RectF;

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    if-eqz v1, :cond_17d

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    div-float/2addr v4, v11

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_184

    :cond_17d
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_187
    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    div-float v2, v1, v11

    sub-float v2, v3, v2

    div-float/2addr v1, v11

    add-float v4, v1, v3

    invoke-static {v4, v2, v11, v2}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:F

    iget-boolean v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Z

    if-eqz v1, :cond_1eb

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G0:I

    if-lez v1, :cond_1b9

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1b9

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G0:I

    int-to-float v3, v3

    const/high16 v5, 0x41000000  # 8.0f

    iget v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E0:I

    invoke-virtual {v1, v3, v13, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1ce

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1ce

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    div-float/2addr v3, v11

    sub-float v3, v12, v3

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e6

    :cond_1ce
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    div-float/2addr v1, v11

    sub-float v3, v12, v1

    add-float v5, v1, v12

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1e6
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_1eb
    iget-boolean v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    if-eqz v1, :cond_266

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    goto :goto_266

    :cond_1f8
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v10, v10, 0x2

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v2

    sub-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v2

    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_238

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->S:F

    add-float/2addr v4, v5

    div-float v5, v1, v11

    div-float/2addr v3, v11

    sub-float/2addr v5, v3

    sub-float/2addr v4, v5

    goto :goto_250

    :cond_238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->S:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v11

    sub-float/2addr v4, v3

    div-float v3, v1, v11

    sub-float/2addr v4, v3

    :goto_250
    invoke-virtual {v9, v4, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getRotation()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v1, v11

    invoke-virtual {v9, v3, v1, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Ljava/lang/String;

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:Landroid/text/TextPaint;

    invoke-virtual {v9, v1, v13, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_266
    :goto_266
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F0:I

    const/high16 v4, 0x40000000  # 2.0f

    if-lez v3, :cond_78

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F0:I

    int-to-float v6, v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E0:I

    invoke-virtual {v3, v6, v5, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F0:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v0, v6

    int-to-float v7, v2

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:F

    div-float v9, v8, v4

    sub-float v9, v7, v9

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    add-float/2addr v10, v1

    div-float/2addr v8, v4

    add-float/2addr v8, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v8, v5

    invoke-virtual {v3, v6, v9, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_78
    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:F

    div-float v6, v5, v4

    sub-float v6, v2, v6

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    invoke-virtual {v3, v0, v6, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final g()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    :cond_10
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    goto :goto_2d

    :cond_19
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_seekbar_progress_pressed_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    div-float/2addr v1, v0

    :goto_2d
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h0:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    const-string v0, "COUISeekBar ensureSize : mIsProgressFull:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mPaddingHorizontal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->x()V

    return-void
.end method

.method public getEnd()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method public getLabelHeight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B0:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMax()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    return p0
.end method

.method public getMin()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    return p0
.end method

.method public getMoveDamping()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    return p0
.end method

.method public getMoveType()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    return p0
.end method

.method public getSeekBarCenterY()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result p0

    sub-int/2addr v1, p0

    shr-int/lit8 p0, v1, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public getSeekBarWidth()I
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

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getStart()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
    .registers 4

    if-nez p2, :cond_3

    return p3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method public final i(I)I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public j(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    return-void
.end method

.method public k(Landroid/view/MotionEvent;)V
    .registers 10

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_14

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    int-to-float v1, v1

    div-float/2addr v4, v1

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    int-to-float v1, v2

    add-float/2addr v4, v1

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v1, :cond_34

    div-float/2addr v0, v2

    cmpl-float v0, v4, v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000  # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    return-void

    :cond_34
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_19d

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    if-eqz v0, :cond_19d

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    if-eqz v0, :cond_ea

    if-eq v0, v5, :cond_4a

    if-eq v0, v4, :cond_ea

    goto/16 :goto_240

    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->c(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    sub-int v4, v0, v4

    if-le p1, v4, :cond_82

    goto :goto_96

    :cond_82
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    if-ge p1, v4, :cond_89

    goto :goto_9f

    :cond_89
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_a7

    :cond_90
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    if-ge p1, v4, :cond_98

    :goto_96
    move v0, v3

    goto :goto_aa

    :cond_98
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_a1

    :goto_9f
    move v0, v1

    goto :goto_aa

    :cond_a1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    sub-int v0, p1, v0

    :goto_a7
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_aa
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v1, v0, :cond_240

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_e5

    invoke-interface {p1, p0, v0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_e5
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    goto/16 :goto_240

    :cond_ea
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_fe

    neg-float v0, v0

    :cond_fe
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->c(F)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    div-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    if-lez v1, :cond_125

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v3, v1, v0

    :cond_125
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v4, v0, :cond_13a

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_137

    invoke-interface {p1, p0, v0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_137
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_13a
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getFastMoveSpring()La2/d;

    move-result-object v0

    iget-object v1, v0, La2/d;->c:La2/d$b;

    iget-wide v1, v1, La2/d$b;->a:D

    iget-wide v3, v0, La2/d;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_240

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x42be0000  # 95.0f

    cmpl-float v2, p1, v2

    const v3, 0x3d4ccccd  # 0.05f

    const v4, 0x3f733333  # 0.95f

    if-ltz v2, :cond_17b

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float p0, p0

    int-to-float p1, v1

    mul-float/2addr v4, p1

    cmpg-float v1, p0, v4

    if-gtz v1, :cond_240

    mul-float/2addr p1, v3

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_240

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, p0, p1}, La2/d;->e(D)La2/d;

    goto/16 :goto_240

    :cond_17b
    const/high16 v2, -0x3d420000  # -95.0f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_196

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float p0, p0

    int-to-float p1, v1

    mul-float/2addr v4, p1

    cmpg-float v1, p0, v4

    if-gtz v1, :cond_240

    mul-float/2addr p1, v3

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_240

    const-wide/high16 p0, -0x4010000000000000L  # -1.0

    invoke-virtual {v0, p0, p1}, La2/d;->e(D)La2/d;

    goto/16 :goto_240

    :cond_196
    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, La2/d;->e(D)La2/d;

    goto/16 :goto_240

    :cond_19d
    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->w(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1a4

    return-void

    :cond_1a4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_240

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->t()V

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1c7

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1c7
    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    if-eq v0, v4, :cond_1d4

    move v0, v5

    goto :goto_1d5

    :cond_1d4
    const/4 v0, 0x0

    :goto_1d5
    if-eqz v0, :cond_240

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1fc

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v4, p1

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    goto :goto_205

    :cond_1fc
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    sub-float/2addr p1, v0

    div-float v4, p1, v2

    :goto_205
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v0, p1, :cond_240

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_23d

    invoke-interface {v0, p0, p1, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_23d
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_240
    :goto_240
    return-void
.end method

.method public l(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getFastMoveSpring()La2/d;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, La2/d;->e(D)La2/d;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-eqz p1, :cond_58

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L0:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000  # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_58

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L0:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2f

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    goto :goto_52

    :cond_46
    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    :goto_52
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0, p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->start(F)V

    goto :goto_5b

    :cond_58
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    :goto_5b
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->q()V

    goto :goto_7d

    :cond_62
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->w(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_74

    const/4 v1, 0x1

    :cond_74
    if-eqz v1, :cond_7d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->a(F)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public m(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    mul-float v2, v0, v1

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    mul-float v3, v0, v2

    sub-float/2addr v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    mul-float/2addr v2, v0

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h0:F

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    return-void
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_c
    return-void
.end method

.method public o()Z
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-nez v0, :cond_1c

    return v2

    :cond_1c
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_3e

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-nez v0, :cond_29

    goto :goto_3e

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_33

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/coui/appcompat/seekbar/COUISeekBar$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$7;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_56

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/oplus/os/LinearmotorVibrator;

    const/16 v3, 0x9a

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v0, v4

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    sub-int v5, p0, v4

    const/16 v6, 0x320

    const/16 v7, 0x4b0

    move v4, v0

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :goto_56
    return v1
.end method

.method public onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 6

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_19

    int-to-float v0, v0

    sub-float v1, v0, p1

    div-float/2addr v1, v0

    goto :goto_1c

    :cond_19
    int-to-float v0, v0

    div-float v1, p1, v0

    :goto_1c
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5d

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_5d
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->g()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->e(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v2, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    if-ge p2, v1, :cond_20

    :goto_1f
    move p2, v1

    :cond_20
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A0:I

    if-lez v0, :cond_27

    if-le p1, v0, :cond_27

    move p1, v0

    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iput p0, v1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;->a:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->x()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->l(Landroid/view/MotionEvent;)V

    return v3

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5e

    if-eq v0, v3, :cond_3f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    if-eq v0, v1, :cond_3f

    goto/16 :goto_eb

    :cond_2b
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_35

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    :cond_35
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->k(Landroid/view/MotionEvent;)V

    goto/16 :goto_eb

    :cond_3f
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000  # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L0:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    :cond_59
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->l(Landroid/view/MotionEvent;)V

    goto/16 :goto_eb

    :cond_5e
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u()V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->create(Landroid/content/Context;)Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-instance v0, Lcom/oplus/physicsengine/engine/FloatValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(F)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COUISeekBar initPhysicsAnimator : setActiveFrame:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "COUISeekBar"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/oplus/physicsengine/engine/FlingBehavior;

    int-to-float v0, v0

    invoke-direct {v5, v1, v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(FF)V

    new-array v0, v3, [Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    aput-object v1, v0, v2

    invoke-virtual {v5, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withProperty([Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object v0

    check-cast v0, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M0:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N0:F

    invoke-virtual {v0, v1, v5}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object v0

    check-cast v0, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O0:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationUpdateListener;)V

    :cond_d1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_dc

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    goto :goto_df

    :cond_dc
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_df
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->j(Landroid/view/MotionEvent;)V

    :goto_eb
    return v3
.end method

.method public p()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_3a

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_25

    goto :goto_3a

    :cond_25
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2f

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    :cond_2f
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->D0:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$6;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_40

    :cond_3a
    :goto_3a
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsSeekBar;->performHapticFeedback(II)Z

    :goto_40
    return-void
.end method

.method public q()V
    .registers 11

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "progressRadius"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:F

    aput v6, v3, v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    aput v6, v3, v5

    const-string v6, "backgroundRadius"

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v1, [F

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    aput v7, v6, v4

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    aput v7, v6, v5

    const-string v7, "progressHeight"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v7, v1, [F

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:F

    aput v8, v7, v4

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    aput v8, v7, v5

    const-string v8, "backgroundHeight"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v8, v1, [F

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    aput v9, v8, v4

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    aput v9, v8, v5

    const-string v9, "animatePadding"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v4

    aput-object v3, v9, v5

    aput-object v6, v9, v1

    const/4 v1, 0x3

    aput-object v7, v9, v1

    const/4 v1, 0x4

    aput-object v8, v9, v1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$5;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public r(IZZ)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    if-eq v0, p1, :cond_3a

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V

    goto :goto_3a

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr p2, v0

    if-lez p2, :cond_2d

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    int-to-float p2, p2

    div-float/2addr v0, p2

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p2, :cond_37

    invoke-interface {p2, p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_37
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final s()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_39

    :cond_15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v3

    :goto_39
    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H:Landroid/graphics/Bitmap;

    :cond_3b
    return-void
.end method

.method public setBackgroundEnlargeScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setBackgroundHeight(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setBackgroundRadius(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/control/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/control/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/control/R$dimen;->coui_seekbar_thumb_shadow_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G0:I

    goto :goto_4d

    :cond_4a
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G0:I

    :goto_4d
    return-void
.end method

.method public setFlingLinearDamping(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-eqz v0, :cond_11

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O0:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;

    :cond_11
    return-void
.end method

.method public setIncrement(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setLocalMax(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method

.method public setLocalMin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMin(I)V

    return-void
.end method

.method public setLocalProgress(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setMax(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    const-string v1, "setMax : the input params is lower than min. (inputMax:"

    const-string v2, ",mMin:"

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    const-string v2, ")"

    const-string v3, "COUISeekBar"

    invoke-static {p1, v1, v2, v3}, Landroidx/core/widget/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_1c
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    if-eq p1, v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-le v0, p1, :cond_2a

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setMin(I)V
    .registers 6

    if-gez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    const-string v1, "setMin : the input params is greater than max. (inputMin:"

    const-string v2, ",mMax:"

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    const-string v2, ")"

    const-string v3, "COUISeekBar"

    invoke-static {p1, v1, v2, v3}, Landroidx/core/widget/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    if-eq v0, p1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMin(I)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-ge p1, v0, :cond_2e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setMoveDamping(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    return-void
.end method

.method public setMoveType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setPaddingHorizontal(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setPhysicalEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->x()V

    goto :goto_12

    :cond_d
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u()V

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    :goto_12
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->r(IZZ)V

    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_17
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z0:Ljava/lang/String;

    return-void
.end method

.method public setProgressEnlargeScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->B:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setProgressHeight(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setProgressRadius(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_17
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->s()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_17
    return-void
.end method

.method public t()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:Z

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_20
    return-void
.end method

.method public u()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->stop()V

    :cond_f
    return-void
.end method

.method public v(FF)F
    .registers 3

    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public w(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2f

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2f

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method public final x()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->C0:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    const-string v1, "COUISeekBar updateBehavior : setActiveFrame:"

    const-string v2, "COUISeekBar"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setActiveFrame(FF)V

    :cond_1e
    return-void
.end method

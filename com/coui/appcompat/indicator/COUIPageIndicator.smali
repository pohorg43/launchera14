.class public Lcom/coui/appcompat/indicator/COUIPageIndicator;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/coui/appcompat/indicator/COUIIPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;
    }
.end annotation


# static fields
.field public static final k0:F

.field public static final l0:F

.field public static final m0:F

.field public static final n0:F

.field public static final o0:F

.field public static final p0:F

.field public static final q0:F

.field public static final r0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Landroid/widget/LinearLayout;

.field public N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public O:Landroid/graphics/Paint;

.field public P:Landroid/graphics/Paint;

.field public Q:Landroid/graphics/Paint;

.field public R:Landroid/graphics/Paint;

.field public S:Landroid/graphics/Paint;

.field public T:Landroid/graphics/Path;

.field public U:Landroid/graphics/Path;

.field public V:Landroid/graphics/RectF;

.field public W:Landroid/graphics/RectF;

.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Landroid/graphics/RectF;

.field public b:I

.field public b0:Landroid/animation/ValueAnimator;

.field public c:I

.field public c0:Landroid/os/Handler;

.field public d:I

.field public d0:I

.field public e:I

.field public e0:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

.field public f:I

.field public f0:I

.field public g:I

.field public g0:Landroid/view/View;

.field public h:I

.field public h0:Landroid/view/View;

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k0:F

    const/high16 v1, 0x40200000  # 2.5f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40f00000  # 7.5f

    sub-float v1, v2, v1

    sput v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l0:F

    mul-float/2addr v2, v0

    const/high16 v1, 0x41a80000  # 21.0f

    sub-float/2addr v2, v1

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m0:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v2, v0, v1

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n0:F

    const/high16 v2, 0x3f200000  # 0.625f

    mul-float/2addr v2, v0

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o0:F

    const/high16 v2, -0x40600000  # -1.25f

    mul-float/2addr v2, v0

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p0:F

    mul-float/2addr v0, v1

    sput v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q0:F

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_3b

    const/4 v0, 0x3

    const-string v1, "COUIPageIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    sput-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/control/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/support/control/R$style;->Widget_COUI_COUIPageIndicator_Dark:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/control/R$style;->Widget_COUI_COUIPageIndicator:I

    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->w:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->B:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->D:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    if-eqz p2, :cond_62

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_62
    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz p2, :cond_d3

    sget-object v4, Lcom/support/control/R$styleable;->COUIPageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotSizeSmall:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotSizeMedium:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotSpacing:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotCornerRadius:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000  # 0.5f

    mul-float/2addr v0, v4

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotClickable:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->A:Z

    sget p3, Lcom/support/control/R$styleable;->COUIPageIndicator_dotStrokeWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d3
    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iput v2, p2, Landroid/graphics/RectF;->top:F

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_19e

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {p3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    new-instance p2, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_19e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFirstVisiblePosition()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    :goto_19
    return v0
.end method


# virtual methods
.method public final a(IFFFZ)Landroid/graphics/Path;
    .registers 15

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:Landroid/graphics/Path;

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sub-float v1, p2, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gez v2, :cond_127

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1c

    goto/16 :goto_127

    :cond_1c
    const/high16 p1, -0x40800000  # -1.0f

    mul-float/2addr p1, v1

    const/high16 p5, 0x40400000  # 3.0f

    mul-float/2addr p5, p4

    add-float/2addr p5, p1

    const/high16 p1, 0x3f800000  # 1.0f

    mul-float/2addr p1, p4

    invoke-static {p5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p5, 0x0

    mul-float v2, p4, p5

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    const/high16 p1, 0x3fc00000  # 1.5f

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    iput p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    const v2, 0x40333333  # 2.8f

    mul-float/2addr v2, p4

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_65

    sget p5, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l0:F

    mul-float/2addr p5, v1

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m0:F

    mul-float/2addr v3, p4

    add-float/2addr v3, p5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sget p5, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n0:F

    mul-float/2addr p5, p4

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    const/high16 p5, 0x40000000  # 2.0f

    invoke-static {p1, p5, v1, p4}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result p1

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k0:F

    mul-float/2addr v3, v1

    mul-float/2addr p5, p4

    sub-float/2addr v3, p5

    div-float/2addr p1, v3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    goto :goto_8f

    :cond_65
    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o0:F

    mul-float/2addr p1, v1

    sget v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p0:F

    mul-float/2addr v1, p4

    add-float/2addr v1, p1

    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q0:F

    mul-float/2addr p1, p4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    float-to-double v3, p4

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    :goto_8f
    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k0:F

    const/high16 p5, 0x3f000000  # 0.5f

    mul-float v1, p1, p5

    mul-float/2addr v1, p4

    mul-float/2addr p1, p5

    mul-float/2addr p1, p4

    cmpl-float v3, p2, p3

    if-lez v3, :cond_a2

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    neg-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    neg-float v1, v1

    :cond_a2
    if-ltz v2, :cond_ec

    add-float v2, p2, v1

    add-float v3, p4, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    add-float/2addr v5, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v4, p2, p3

    mul-float/2addr v4, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    add-float/2addr p5, p4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    sub-float v5, p3, v5

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    add-float/2addr v6, p4

    invoke-virtual {v0, v4, p5, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float p5, p3, v1

    invoke-virtual {v0, p5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p1, p4, p1

    invoke-virtual {v0, p5, p1}, Landroid/graphics/Path;->lineTo(FF)V

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    sub-float/2addr p3, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    sub-float p5, p4, p5

    invoke-virtual {v0, p3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    sub-float p3, p4, p3

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    add-float/2addr p2, p5

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    sub-float/2addr p4, p0

    invoke-virtual {v0, v4, p3, p2, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_126

    :cond_ec
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    add-float/2addr p1, p2

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    add-float/2addr v1, p4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float p1, p2, p3

    mul-float/2addr p1, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    add-float/2addr p5, p4

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    add-float/2addr v2, p4

    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    sub-float/2addr p3, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    sub-float p5, p4, p5

    invoke-virtual {v0, p3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:F

    sub-float p3, p4, p3

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    add-float/2addr p5, p2

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    sub-float v1, p4, v1

    invoke-virtual {v0, p1, p3, p5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:F

    add-float/2addr p2, p1

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:F

    add-float/2addr p4, p0

    invoke-virtual {v0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_126
    return-object v0

    :cond_127
    :goto_127
    invoke-virtual {p0, p5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(Z)V

    return-object v0
.end method

.method public final b(IFZ)V
    .registers 7

    if-eqz p3, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(IF)V

    goto/16 :goto_fa

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(IF)V

    goto/16 :goto_fa

    :cond_14
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_1f

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    goto :goto_29

    :cond_1f
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_29

    goto/16 :goto_fa

    :cond_29
    :goto_29
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_fa

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_fa

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_64

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    goto :goto_6c

    :cond_64
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_6c
    invoke-static {p3, v0, p2, p3}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p3

    goto :goto_78

    :cond_71
    sub-float/2addr v0, v1

    const/high16 p3, 0x3f800000  # 1.0f

    invoke-static {p3, p2, v0, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p3

    :goto_78
    const/4 v0, 0x0

    if-nez p1, :cond_a2

    cmpl-float p1, p2, v0

    if-nez p1, :cond_a2

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_8e

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    goto :goto_90

    :cond_8e
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    :goto_90
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a2

    int-to-float p1, p1

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr p3, v1

    int-to-float p3, p3

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p3

    sub-float p3, p1, v1

    :cond_a2
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-eqz v1, :cond_cf

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_bf

    iget-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-eqz p1, :cond_bf

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    iput p3, p1, Landroid/graphics/RectF;->right:F

    goto :goto_ec

    :cond_bf
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ec

    add-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    goto :goto_ec

    :cond_cf
    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-nez v1, :cond_e6

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    if-eqz v1, :cond_d8

    goto :goto_e6

    :cond_d8
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ec

    add-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    goto :goto_ec

    :cond_e6
    :goto_e6
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    iput p3, p1, Landroid/graphics/RectF;->right:F

    :cond_ec
    :goto_ec
    cmpl-float p1, p2, v0

    if-nez p1, :cond_fa

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    :cond_fa
    :goto_fa
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    return-void
.end method

.method public final c(IF)V
    .registers 9

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    goto :goto_d

    :cond_9
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    :goto_d
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sget v2, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_3f

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    goto :goto_41

    :cond_3f
    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    :goto_41
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_82

    if-nez p1, :cond_53

    cmpl-float v1, p2, v5

    if-nez v1, :cond_53

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    goto :goto_96

    :cond_53
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    goto :goto_7a

    :cond_76
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    :goto_7a
    sub-float/2addr p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, p2, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    goto :goto_96

    :cond_82
    if-nez p1, :cond_92

    cmpl-float p1, p2, v5

    if-nez p1, :cond_92

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    goto :goto_96

    :cond_92
    invoke-static {v1, v2, p2, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    :goto_96
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-eqz v1, :cond_c4

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_e2

    :cond_b3
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e2

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_e2

    :cond_c4
    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-nez v1, :cond_dc

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    if-eqz v1, :cond_cd

    goto :goto_dc

    :cond_cd
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e2

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_e2

    :cond_dc
    :goto_dc
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    :cond_e2
    :goto_e2
    cmpl-float p1, p2, v5

    if-nez p1, :cond_f0

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    :cond_f0
    return-void
.end method

.method public final d(Z)V
    .registers 3

    const/4 v0, -0x1

    if-eqz p1, :cond_10

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    goto :goto_1c

    :cond_10
    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    :goto_1c
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e(IF)V
    .registers 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    sget-boolean v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    const-string v9, "COUIPageIndicator"

    if-eqz v1, :cond_1b

    const-string v1, "executeScrollLeftDotAnim pos: "

    const-string v2, "mCurrent: "

    invoke-static {v1, v7, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {v1, v2, v9}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1b
    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_78

    if-ne v7, v3, :cond_4a

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v1, v2, :cond_4a

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v4, v0, v1, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v7, 0x1

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v7, 0x2

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto/16 :goto_366

    :cond_4a
    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v1, v1, -0x2

    if-ne v7, v1, :cond_366

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_366

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    invoke-virtual {v6, v4, v0, v1, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v7, -0x3

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v5

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto/16 :goto_366

    :cond_78
    const-string v10, "\n mTrace: "

    const-string v11, "\n mPortRect: "

    const-string v12, " curr: "

    const/high16 v1, 0x3f000000  # 0.5f

    const/high16 v13, 0x3f800000  # 1.0f

    if-ne v7, v3, :cond_152

    iget-object v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    add-int/lit8 v14, v7, 0x1

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_152

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v4, v0, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    move v0, v5

    :goto_96
    if-ge v0, v14, :cond_a0

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v2, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_a0
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v14, v0, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v7, 0x2

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v0, v2, v3, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/2addr v0, v5

    :goto_b1
    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v0, v2, :cond_bb

    invoke-virtual {v6, v0, v4, v4, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    :cond_bb
    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    invoke-virtual {v6, v7, v8, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(IFZ)V

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v4, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v4, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    mul-float v4, v3, v1

    sub-float v2, v0, v4

    iput v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v4, v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    cmpl-float v0, v8, v13

    if-nez v0, :cond_12a

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    sub-float/2addr v0, v1

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    :cond_12a
    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_366

    const-string v0, "resizeDotsWhenAboveSixScrollLeftAtPosThree position： "

    invoke-static {v0, v7, v12}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_366

    :cond_152
    const/4 v1, 0x4

    if-lt v7, v1, :cond_284

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v2, v2, -0x2

    if-ge v7, v2, :cond_284

    iget-object v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v2, v13, :cond_284

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v2, v7, :cond_284

    add-int/lit8 v0, v7, -0x4

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v4

    :goto_175
    if-ge v2, v0, :cond_17d

    invoke-virtual {v6, v2, v4, v4, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_175

    :cond_17d
    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v0, v2, v4, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    move-result v0

    add-int/lit8 v2, v7, -0x3

    iget v13, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v14, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v2, v13, v14, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v13, v7, 0x2

    iget-object v14, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    :goto_194
    add-int/2addr v2, v5

    if-ge v2, v13, :cond_19d

    iget v15, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v2, v15, v15, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_194

    :cond_19d
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v15, 0x8

    if-eq v2, v15, :cond_1b7

    if-gt v0, v3, :cond_1b7

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b7

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    goto :goto_1b8

    :cond_1b7
    const/4 v0, 0x0

    :goto_1b8
    move v14, v0

    add-int/lit8 v0, v7, 0x1

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v2, v3, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v13, v4, v0, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    :goto_1cd
    add-int/2addr v13, v5

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v13, v0, :cond_1d6

    invoke-virtual {v6, v13, v4, v4, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_1cd

    :cond_1d6
    iput-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g0:Landroid/view/View;

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h0:Landroid/view/View;

    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    invoke-virtual {v6, v7, v8, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(IFZ)V

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v14

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v14

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sub-float/2addr v1, v14

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sub-float/2addr v1, v14

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v4, v2, v1

    sub-float v2, v0, v4

    iput v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v4, v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, v8, v0

    if-nez v0, :cond_25c

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sub-float/2addr v0, v14

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    sub-float/2addr v0, v1

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    :cond_25c
    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_366

    const-string v0, "resizeDotsWhenAboveSixScrollLeftAtMidPos position： "

    invoke-static {v0, v7, v12}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_366

    :cond_284
    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v1, v1, -0x2

    if-ne v7, v1, :cond_366

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    add-int/lit8 v2, v7, -0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_366

    move v0, v4

    :goto_295
    if-ge v0, v2, :cond_29d

    invoke-virtual {v6, v0, v4, v4, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_295

    :cond_29d
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    invoke-virtual {v6, v2, v0, v1, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v7, -0x3

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    :goto_2ad
    add-int/2addr v0, v5

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v0, v1, :cond_2b8

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v1, v1, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_2ad

    :cond_2b8
    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v0, v1, v2, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    invoke-virtual {v6, v7, v8, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(IFZ)V

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v4, v2, v1

    sub-float v2, v0, v4

    iput v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v4, v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, v8, v0

    if-nez v0, :cond_340

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    sub-float/2addr v0, v1

    iput v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    :cond_340
    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_366

    const-string v0, "resizeDotsWhenAboveSixScrollLeftAtLastPos position： "

    invoke-static {v0, v7, v12}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_366
    :goto_366
    return-void
.end method

.method public final f(IF)V
    .registers 16

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    sget-boolean v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    const-string v2, "COUIPageIndicator"

    if-eqz v1, :cond_24

    const-string v1, "executeScrollRightDotAnim pos: "

    const-string v3, "mCurrent: "

    invoke-static {v1, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/high16 v1, 0x3f800000  # 1.0f

    sub-float p2, v1, p2

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_8b

    add-int/lit8 v3, v3, -0x5

    if-ne p1, v3, :cond_5b

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v1, v2, :cond_5b

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v5, p1, v0, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v6, p1, v0, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v6

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto/16 :goto_30b

    :cond_5b
    if-nez p1, :cond_30b

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30b

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v5, p1, v0, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v6

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto/16 :goto_30b

    :cond_8b
    add-int/lit8 v3, v3, -0x5

    const-string v4, "\n mTrace: "

    const-string v7, "\n mPortRect: "

    const-string v8, " curr: "

    if-ne p1, v3, :cond_140

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_140

    add-int/lit8 v0, p1, 0x1

    move v3, v5

    :goto_a0
    add-int/lit8 v6, v0, -0x2

    if-ge v3, v6, :cond_aa

    invoke-virtual {p0, v3, v5, v5, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_aa
    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v6, v3, v5, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    move v5, v0

    :goto_bf
    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_cb

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v5, v6, v6, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    :cond_cb
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v6, v5, v9, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    iput v0, v5, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p2, p2, v1

    if-nez p2, :cond_118

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    :cond_118
    sget-boolean p2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p2, :cond_30b

    const-string p2, "resizeDotsWhenAboveSixScrollRightAtThirdPos position： "

    invoke-static {p2, p1, v8}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30b

    :cond_140
    if-lez p1, :cond_257

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v1, v1, -0x5

    if-ge p1, v1, :cond_257

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v1, v3, :cond_257

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    add-int/lit8 v3, p1, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_257

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, v0, -0x2

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move v9, v5

    :goto_167
    if-ge v9, v1, :cond_16f

    invoke-virtual {p0, v9, v5, v5, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_167

    :cond_16f
    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v1, v5, v9, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-ne v1, v9, :cond_183

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    goto :goto_184

    :cond_183
    const/4 v1, 0x0

    :goto_184
    add-int/lit8 v9, v0, -0x1

    iget-object v10, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v12, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v9, v11, v12, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    :goto_193
    add-int/2addr v9, v6

    add-int/lit8 v11, v0, 0x3

    if-ge v9, v11, :cond_19e

    iget v11, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v9, v11, v11, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_193

    :cond_19e
    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v11, v6, v9, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v6, v0, 0x4

    iget-object v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1cd

    iget v11, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v6, v11, v5, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1cd

    const/high16 v11, 0x40400000  # 3.0f

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_1cd

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1cd

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1cd
    :goto_1cd
    add-int/lit8 v6, v6, 0x1

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v6, v3, :cond_1d8

    const/4 v3, 0x0

    invoke-virtual {p0, v6, v3, v3, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_1cd

    :cond_1d8
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->right:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->right:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_22f

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p2, v1

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    :cond_22f
    sget-boolean p2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p2, :cond_30b

    const-string p2, "resizeDotsWhenAboveSixScrollRightAtMidPos position： "

    invoke-static {p2, p1, v8}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30b

    :cond_257
    if-nez p1, :cond_30b

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    add-int/lit8 v1, p1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v0, v1, :cond_30b

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v3, v6, v9, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    const/4 v3, 0x1

    :goto_27c
    add-int/lit8 v6, v0, 0x3

    if-ge v3, v6, :cond_288

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {p0, v3, v6, v6, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_27c

    :cond_288
    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p0, v6, v3, v9, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    add-int/lit8 v0, v0, 0x4

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    invoke-virtual {p0, v0, v3, v6, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    :goto_298
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v0, v3, :cond_2a3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v3, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k(IIIF)I

    goto :goto_298

    :cond_2a3
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v3

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->right:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2e5

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    :cond_2e5
    sget-boolean p2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p2, :cond_30b

    const-string p2, "resizeDotsWhenAboveSixScrollRightAtFirstPos position： "

    invoke-static {p2, p1, v8}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30b
    :goto_30b
    return-void
.end method

.method public final g(IFZ)V
    .registers 14

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    sget-object v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    sget-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_17e

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_17

    goto/16 :goto_17e

    :cond_17
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v5, v5, -0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    if-ge v4, v5, :cond_30

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    :cond_30
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    add-int/lit8 v5, v5, 0x3

    if-le v4, v5, :cond_3a

    add-int/lit8 v5, v4, -0x3

    iput v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    :cond_3a
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    const-string v6, "COUIPageIndicator"

    const/4 v7, 0x0

    if-nez v5, :cond_74

    if-lt v4, v5, :cond_74

    add-int/lit8 v8, v5, 0x3

    if-gt v4, v8, :cond_74

    move v4, v7

    :goto_48
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v4, v5, :cond_10a

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    add-int/lit8 v8, v5, 0x3

    if-gt v4, v8, :cond_58

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_58
    add-int/lit8 v8, v5, 0x4

    if-ne v4, v8, :cond_62

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_62
    add-int/lit8 v5, v5, 0x5

    if-ne v4, v5, :cond_6c

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_6c
    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_74
    iget v8, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v8, v8, -0x4

    if-ne v5, v8, :cond_ab

    if-lt v4, v5, :cond_ab

    add-int/lit8 v9, v5, 0x3

    if-gt v4, v9, :cond_ab

    move v4, v7

    :goto_81
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v4, v5, :cond_10a

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    if-lt v4, v5, :cond_8f

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_8f
    add-int/lit8 v8, v5, -0x1

    if-ne v4, v8, :cond_99

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_99
    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_a3

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_a3
    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_ab
    if-lez v5, :cond_e8

    if-ge v5, v8, :cond_e8

    if-lt v4, v5, :cond_e8

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_e8

    move v4, v7

    :goto_b6
    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v4, v5, :cond_10a

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    add-int/lit8 v8, v5, -0x2

    if-le v4, v8, :cond_e0

    add-int/lit8 v8, v5, 0x5

    if-lt v4, v8, :cond_c5

    goto :goto_e0

    :cond_c5
    add-int/lit8 v8, v5, -0x1

    if-eq v4, v8, :cond_da

    add-int/lit8 v8, v5, 0x4

    if-ne v4, v8, :cond_ce

    goto :goto_da

    :cond_ce
    if-lt v4, v5, :cond_e5

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_e5

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_da
    :goto_da
    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_e0
    :goto_e0
    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e5
    :goto_e5
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_e8
    const-string v1, "Illegal state: First large dot index = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Current position = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {v1, v4, v6}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v1, v7

    :goto_fe
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v1, v4, :cond_10a

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    :cond_10a
    move v1, v7

    :goto_10b
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v1, v4, :cond_16e

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    if-ne v4, v3, :cond_11c

    goto :goto_127

    :cond_11c
    if-ne v4, v2, :cond_121

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    goto :goto_127

    :cond_121
    if-ne v4, v0, :cond_126

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    goto :goto_127

    :cond_126
    move v5, v7

    :goto_127
    sget-boolean v4, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v4, :cond_143

    const-string v4, "fixDotsLevel: i = "

    const-string v8, " dotsize = "

    const-string v9, " isInLayout = "

    invoke-static {v4, v1, v8, v5, v9}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16b

    if-nez v5, :cond_153

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16b

    :cond_153
    sget v8, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_16b

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_16b
    :goto_16b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    :cond_16e
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/coui/appcompat/indicator/a;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/indicator/a;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;IFZI)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_17e
    :goto_17e
    return-void
.end method

.method public getDotsCount()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    return p0
.end method

.method public h(I)V
    .registers 8

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    const-string v1, "COUIPageIndicator"

    if-eqz v0, :cond_13

    const-string v0, "onPageScrollStateChanged state =："

    const-string v2, ",mTranceCutTailRight"

    invoke-static {v0, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->B:Z

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_13
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_28

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-eqz v0, :cond_56

    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    goto :goto_56

    :cond_28
    const/4 v0, 0x2

    if-ne p1, v0, :cond_33

    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_56

    :cond_33
    if-nez p1, :cond_56

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    if-nez v0, :cond_56

    :cond_3d
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4c
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o()V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_56
    :goto_56
    if-nez p1, :cond_db

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c2

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_c2

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-gez p1, :cond_71

    goto :goto_c2

    :cond_71
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-eq p1, v0, :cond_db

    const-string p1, "checkWrongState: state wrong? current position = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move p1, v2

    :goto_87
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_aa

    const-string v0, "dot "

    const-string v3, " level = "

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_87

    :cond_aa
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_b9

    new-instance p1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_db

    :cond_b9
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g(IFZ)V

    goto :goto_db

    :cond_c2
    :goto_c2
    const-string p1, "checkWrongState: no dots. mIndicatorDotLevel.size: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mCurrentPosition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_db
    :goto_db
    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    return-void
.end method

.method public i(IF)V
    .registers 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    sget-boolean v9, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    const-string v10, "COUIPageIndicator"

    if-eqz v9, :cond_98

    const-string v1, "onPageScrolled position =:"

    const-string v2, ",mCurrentPosition =:"

    invoke-static {v1, v7, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mLastPosition =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",positionOffset =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mFinalRight =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mFinalLeft =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mTraceLeft =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mTraceRight =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n mTraceRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nmIsAnimated =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAnimatorCanceled =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mNeedSettlePositionTemp =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPaused =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsRtl =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_a1

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-le v0, v7, :cond_a7

    goto :goto_a5

    :cond_a1
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-gt v0, v7, :cond_a7

    :goto_a5
    move v12, v11

    goto :goto_a8

    :cond_a7
    move v12, v1

    :goto_a8
    iput-boolean v12, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    const/4 v0, 0x0

    cmpl-float v13, v8, v0

    if-nez v13, :cond_c6

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    if-eqz v0, :cond_c6

    iget-object v14, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    new-instance v15, Lcom/coui/appcompat/indicator/a;

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/indicator/a;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;IFZI)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c6
    invoke-virtual {v6, v7, v8, v12}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(IFZ)V

    const/high16 v0, 0x3f000000  # 0.5f

    if-eqz v12, :cond_d9

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    goto :goto_e4

    :cond_d9
    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    :goto_e4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_f3

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, v6, v12}, Lcom/android/common/util/q;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Z)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_f8

    :cond_f3
    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    invoke-virtual {v6, v1, v11, v12}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q(IZZ)V

    :goto_f8
    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v2, v2

    mul-float v4, v2, v0

    add-float v3, v4, v1

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:Landroid/graphics/Path;

    if-nez v13, :cond_119

    iput v7, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(Z)V

    goto/16 :goto_18f

    :cond_119
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_133

    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    if-eqz v0, :cond_12c

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    add-int/lit8 v1, v7, 0x1

    if-le v0, v1, :cond_146

    iput v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    goto :goto_146

    :cond_12c
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-eq v0, v7, :cond_146

    iput v7, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    goto :goto_146

    :cond_133
    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i0:Z

    if-eqz v0, :cond_13e

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-eq v0, v7, :cond_146

    iput v7, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    goto :goto_146

    :cond_13e
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    add-int/lit8 v1, v7, 0x1

    if-le v0, v1, :cond_146

    iput v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    :cond_146
    :goto_146
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_153

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, v8

    invoke-virtual {v6, v0, v12}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l(FZ)V

    goto :goto_156

    :cond_153
    invoke-virtual {v6, v8, v12}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l(FZ)V

    :goto_156
    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_18f

    iget-object v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_18f

    if-eqz v9, :cond_172

    const-string v0, "executeDotAnim position: "

    const-string v1, "first visible child:  curr: "

    invoke-static {v0, v7, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {v0, v1, v10}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_172
    if-eqz v12, :cond_182

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-virtual/range {p0 .. p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f(IF)V

    goto :goto_18f

    :cond_17e
    invoke-virtual/range {p0 .. p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e(IF)V

    goto :goto_18f

    :cond_182
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_18c

    invoke-virtual/range {p0 .. p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e(IF)V

    goto :goto_18f

    :cond_18c
    invoke-virtual/range {p0 .. p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f(IF)V

    :cond_18f
    :goto_18f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public j(I)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_e

    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->C:Z

    :cond_e
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    if-gt v1, p1, :cond_1f

    goto :goto_1d

    :cond_19
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    if-le v1, p1, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->B:Z

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_2c

    move v1, v0

    :cond_2c
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    mul-int/lit16 v1, v1, 0x12c

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p(I)V

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:I

    if-ge v1, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    invoke-virtual {p0, v1, v2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q(IZZ)V

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_7a

    const-string v0, "onPageSelected position =："

    const-string v1, ",mCurrentPosition = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mLastPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mDepartRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mTraceRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIPageIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    const/16 v1, 0x11

    if-eq v0, p1, :cond_98

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8d
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o()V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a5

    :cond_98
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a5
    :goto_a5
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    return-void
.end method

.method public final k(IIIF)I
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_99

    const/high16 v2, 0x3f400000  # 0.75f

    cmpl-float v2, p4, v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-ltz v2, :cond_13

    move v4, v3

    goto :goto_14

    :cond_13
    move v4, p4

    :goto_14
    const/high16 v5, 0x3e800000  # 0.25f

    cmpg-float v5, p4, v5

    if-gez v5, :cond_1b

    move v4, v1

    :cond_1b
    sget v6, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    int-to-float v7, p2

    sub-int p2, p3, p2

    int-to-float p2, p2

    mul-float/2addr p2, v4

    add-float/2addr p2, v7

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v7, p2

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x40400000  # 3.0f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_42

    if-nez p3, :cond_42

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    if-lez v2, :cond_45

    move p4, v3

    :cond_45
    if-gez v5, :cond_48

    goto :goto_49

    :cond_48
    move v1, p4

    :goto_49
    cmpl-float p4, v1, v3

    if-nez p4, :cond_97

    sget-object p4, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_5d

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {p0, p1, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_5d
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_6d

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {p0, p1, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_6d
    iget p4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    sub-int p4, p3, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-nez p4, :cond_7f

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object p3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {p0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_7f
    iget p4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-nez p3, :cond_90

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object p3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {p0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_90
    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object p3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {p0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_97
    :goto_97
    move v1, p2

    goto :goto_b3

    :cond_99
    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p0, :cond_b3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resize specific position dot error, out of bounds: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    float-to-int p0, v1

    return p0
.end method

.method public final l(FZ)V
    .registers 7

    const/high16 v0, 0x40200000  # 2.5f

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x437f0000  # 255.0f

    const/16 v3, 0xff

    if-eqz p2, :cond_56

    const p2, 0x3ecccccd  # 0.4f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_20

    mul-float/2addr p1, v0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_a4

    :cond_20
    const p2, 0x3f4ccccd  # 0.8f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3c

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int p2, v1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_88

    :cond_3c
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a3

    :cond_56
    const p2, 0x3f19999a  # 0.6f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_6c

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v2

    float-to-int p1, v1

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a4

    :cond_6c
    const p2, 0x3e4ccccc  # 0.19999999f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_8a

    mul-float p2, p1, v2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_88
    move p1, p2

    goto :goto_a4

    :cond_8a
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_a3
    const/4 p1, 0x0

    :goto_a4
    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p0, :cond_af

    const-string p0, "setDotAlpha alpha is "

    const-string p2, "COUIPageIndicator"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_af
    return-void
.end method

.method public final m(ZLandroid/view/View;I)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_11

    :cond_e
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_11
    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public n()V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->D:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->D:Z

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v3, "LARGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_37
    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v3, "MEDIUM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_47
    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v3, "SMALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_57
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_5f
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_93

    const-string v0, "onRestoreInstanceState "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " indicatorDotLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " visivle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIPageIndicator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    iput-object v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->a:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p0, :cond_53

    const-string p0, "onSaveInstanceState "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->a:Ljava/util/List;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " indicatorDotLevel: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIPageIndicator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-object v1
.end method

.method public final p(I)V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, p1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_2b

    :cond_29
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    :goto_2b
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v3, 0x6

    const-string v4, "COUIPageIndicator"

    if-ge v1, v3, :cond_52

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_44
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_52
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_62
    const-string v1, " current position = "

    const-string v3, "Illegal Operation: postion = "

    if-nez v0, :cond_73

    invoke-static {v3, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_17b

    :cond_73
    sget v5, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_88

    iget-object v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    goto :goto_8a

    :cond_88
    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    :goto_8a
    const/4 v8, 0x0

    if-eqz v2, :cond_f3

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_c2

    if-nez p1, :cond_9d

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    sub-int/2addr v7, v0

    int-to-float v0, v7

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_9d
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_c2
    if-nez p1, :cond_ce

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_ce
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_f3
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_14d

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_109

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto/16 :goto_17b

    :cond_109
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_119

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_119
    if-nez v0, :cond_125

    invoke-static {v3, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_17b

    :cond_125
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto :goto_17b

    :cond_14d
    if-nez p1, :cond_158

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    goto :goto_17b

    :cond_158
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_17b

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    :cond_17b
    :goto_17b
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_1bb

    const-string v0, "verifyFinalPosition position =："

    const-string v1, ",mFinalRight"

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",mFinalLeft =:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",mWidth =:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isRtl = :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bb
    return-void
.end method

.method public final q(IZZ)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_96

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    if-eqz p3, :cond_3d

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    :cond_22
    if-eqz p3, :cond_8a

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    goto :goto_8a

    :cond_3d
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_64

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8a

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    goto :goto_8a

    :cond_64
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8a

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    :cond_8a
    :goto_8a
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_132

    :cond_96
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a9

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    goto/16 :goto_119

    :cond_a9
    if-eqz p3, :cond_e3

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_b2

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_119

    :cond_b2
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_119

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    neg-int v0, v0

    goto :goto_de

    :cond_dc
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    :goto_de
    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    goto :goto_119

    :cond_e3
    if-nez p1, :cond_e9

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_119

    :cond_e9
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_119

    sget v0, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    neg-int v0, v0

    goto :goto_115

    :cond_113
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    :goto_115
    int-to-float v0, v0

    add-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    :cond_119
    :goto_119
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_12c

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto :goto_132

    :cond_12c
    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iput v0, p3, Landroid/graphics/RectF;->left:F

    :goto_132
    sget-boolean p3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz p3, :cond_15e

    const-string p3, "verifyStickyPosition pos: "

    const-string v0, " portRect: "

    invoke-static {p3, p1, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " depart: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isPortStickyPath: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result v0

    const-string v1, "COUIPageIndicator"

    if-eqz v0, :cond_16

    const-string v0, "WARNING: Avoid calling this method during performLayout()!\nMaybe you can try post(() -> setCurrentPosition(newCount));"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/core/content/res/c;

    invoke-direct {v0, p0, p1}, Landroidx/core/content/res/c;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_63

    :cond_16
    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_27

    const-string v0, "setCurrentPosition: "

    const-string v2, " total dots = "

    invoke-static {v0, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    invoke-static {v0, v2, v1}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_27
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-lt p1, v0, :cond_2c

    return-void

    :cond_2c
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_60

    const/4 v0, 0x0

    :goto_34
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    if-ne v1, v2, :cond_49

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    goto :goto_4c

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4c
    :goto_4c
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    if-ge p1, v0, :cond_53

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    goto :goto_5b

    :cond_53
    add-int/lit8 v0, v0, 0x3

    if-le p1, v0, :cond_5b

    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g(IFZ)V

    :cond_60
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n()V

    :goto_63
    return-void
.end method

.method public setDotCornerRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    return-void
.end method

.method public setDotSize(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    return-void
.end method

.method public setDotSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    return-void
.end method

.method public setDotStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    return-void
.end method

.method public setDotsCount(I)V
    .registers 16

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result v1

    const-string v2, "COUIPageIndicator"

    if-eqz v1, :cond_f

    const-string v1, "WARNING: Avoid calling this method during performLayout()!\nMaybe you can try post(() -> setDotsCount(newCount));"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v1, 0x0

    move v3, v1

    :goto_11
    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_27

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_24

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    goto :goto_27

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_27
    :goto_27
    sget-boolean v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v3, :cond_65

    const-string v3, "setDotsCount: current dot count = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " set count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before setDotsCount, First large dot index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Current position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f0:I

    const/4 v3, 0x6

    if-lt p1, v3, :cond_7d

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f0:I

    :cond_7d
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-lt v4, p1, :cond_89

    add-int/lit8 v4, p1, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    :cond_89
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_b4

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f0:I

    if-ge v6, v5, :cond_99

    goto :goto_b4

    :cond_99
    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:I

    mul-int v8, v7, v6

    iput v8, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    if-lt v4, v3, :cond_b1

    add-int/lit8 v6, v6, -0x2

    mul-int/2addr v6, v7

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    add-int/2addr v6, v4

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    add-int/2addr v6, v4

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v6

    iput v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    :cond_b1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_b4
    :goto_b4
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-nez v4, :cond_b9

    return-void

    :cond_b9
    move v4, v1

    :goto_ba
    if-ge v1, p1, :cond_1b7

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/support/control/R$layout;->coui_page_indicator_dot_layout:I

    invoke-virtual {v7, v8, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/support/control/R$id;->page_indicator_dot:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/support/control/R$drawable;->coui_page_indicator_dot:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v12, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f0:I

    if-lt v12, v3, :cond_145

    iget-object v11, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v3, :cond_f8

    goto :goto_13b

    :cond_f8
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    if-eq v11, v4, :cond_139

    iget v12, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    if-ge v12, v3, :cond_101

    goto :goto_139

    :cond_101
    iget v12, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f0:I

    add-int/lit8 v13, v12, -0x2

    if-ge v4, v13, :cond_116

    if-ne v11, v13, :cond_10c

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    goto :goto_13b

    :cond_10c
    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_113

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    goto :goto_13b

    :cond_113
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    goto :goto_13b

    :cond_116
    if-ne v4, v13, :cond_125

    if-eqz v11, :cond_122

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_11f

    goto :goto_122

    :cond_11f
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    goto :goto_13b

    :cond_122
    :goto_122
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    goto :goto_13b

    :cond_125
    add-int/lit8 v12, v12, -0x1

    if-ne v4, v12, :cond_136

    if-nez v11, :cond_12e

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    goto :goto_13b

    :cond_12e
    if-ne v11, v5, :cond_133

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    goto :goto_13b

    :cond_133
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    goto :goto_13b

    :cond_136
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    goto :goto_13b

    :cond_139
    :goto_139
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    :goto_13b
    if-lt v1, v3, :cond_144

    if-nez v4, :cond_144

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_144
    move v11, v4

    :cond_145
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v12, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v12, v9, v6}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m(ZLandroid/view/View;I)V

    sget-boolean v4, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v4, :cond_15e

    const-string v4, "addDotLevel: dotSize = "

    invoke-static {v4, v11, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_15e
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    sub-int v4, v11, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_16e

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    :cond_16e
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    sub-int v4, v11, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_180

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object v6, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    :cond_180
    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_191

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object v6, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    :cond_191
    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:Ljava/util/List;

    sget-object v6, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_198
    iget-boolean v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->A:Z

    if-eqz v4, :cond_1a4

    new-instance v4, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;

    invoke-direct {v4, p0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a4
    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Ljava/util/List;

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    move v4, v12

    goto/16 :goto_ba

    :cond_1b7
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g(IFZ)V

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r0:Z

    if-eqz v0, :cond_1e9

    const-string v0, "setDotsCount =："

    const-string v1, ",mWidth = :"

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",rtl =:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e9
    return-void
.end method

.method public setIsClickable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->A:Z

    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e0:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m(ZLandroid/view/View;I)V

    goto :goto_12

    :cond_23
    return-void
.end method

.method public setTraceDotColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

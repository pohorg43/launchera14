.class public Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/coui/appcompat/indicator/COUIIPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;
    }
.end annotation


# static fields
.field public static final p:Z

.field public static final q:Landroid/view/animation/PathInterpolator;

.field public static final r:Landroid/animation/ArgbEvaluator;


# instance fields
.field public final a:[F

.field public final b:Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;

.field public c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:Z

.field public l:J

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Paint;

.field public o:Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUIPageIndicator2"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->r:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/support/control/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/support/control/R$style;->Widget_COUI_COUIPageIndicator_Dark:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/control/R$style;->Widget_COUI_COUIPageIndicator:I

    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a:[F

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;

    invoke-direct {v1, p0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;

    const v2, 0x3ba3d70a  # 0.005f

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->j:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->l:J

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    const/4 v3, 0x1

    if-eqz p2, :cond_77

    sget-object v4, Lcom/support/control/R$styleable;->COUIPageIndicator2:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_traceDotColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotSize:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotSizeMedium:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->g:F

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotSizeSmall:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->h:F

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotSpacing:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->i:F

    sget p2, Lcom/support/control/R$styleable;->COUIPageIndicator2_dotClickable:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->k:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_77
    new-instance p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    invoke-direct {p1, p0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->m:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPosition: position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " animate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_30

    const-string v1, "COUIPageIndicator2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public callOnClick()Z
    .registers 6

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->k:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->o:Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a(FF)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;->onClick(I)V

    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public getDotsCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v4, v4, v2

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    const/high16 v4, 0x43340000  # 180.0f

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v6, v5, v2

    aget v7, v5, v1

    aget v5, v5, v2

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v7, v5, v8, v6}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v6, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    div-float/2addr v6, v8

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_4f

    :cond_42
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v4, v4, v2

    neg-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_4f
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v4, "draw rect bounds = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " horizontalOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COUIPageIndicator2"

    if-eqz v0, :cond_81

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_a8

    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    if-eq v6, v7, :cond_87

    add-int/lit8 v8, v6, -0x1

    if-ne v8, v7, :cond_a8

    goto :goto_87

    :cond_a8
    iget v7, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    iget v8, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    add-float v9, v7, v8

    iget-object v10, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v11, v10, v2

    cmpg-float v9, v9, v11

    if-ltz v9, :cond_87

    sub-float/2addr v7, v8

    aget v8, v10, v1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_be

    goto :goto_87

    :cond_be
    sget-boolean v7, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v8, "drawDots: dot index = "

    const-string v9, " dot radius = "

    invoke-static {v8, v6, v9}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " dot location = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->e:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ") left = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " right = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    aget v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_102

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    if-ne v6, v7, :cond_10d

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v6, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    iput v6, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a:I

    goto :goto_113

    :cond_10d
    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v6, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    iput v6, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a:I

    :goto_113
    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v12, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->m:Landroid/graphics/Paint;

    iget v6, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a:I

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    iget v7, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    sub-float v8, v6, v7

    iget v4, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->e:F

    sub-float v9, v4, v7

    add-float v10, v6, v7

    add-float v11, v4, v7

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_87

    :cond_130
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1cb

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_153

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    iget v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1cb

    :cond_153
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    const/high16 v2, 0x3f000000  # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_18f

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v2, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    iget v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v2, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    sget-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->r:Landroid/animation/ArgbEvaluator;

    iget v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v4, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1c2

    :cond_18f
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v2, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    sget-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->r:Landroid/animation/ArgbEvaluator;

    iget v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v4, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    iget v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1c2
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->j:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1cb
    :goto_1cb
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget-object p2, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->c:Landroid/graphics/RectF;

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    iget-object v2, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->b:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a(IF)V

    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    if-eqz p0, :cond_38

    const-string p0, "onRestoreInstanceState dotsCount = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPosition = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->b:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator2"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    iput v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->c()F

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->b:F

    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    if-eqz p0, :cond_37

    const-string p0, "onSaveInstanceState dotsCount = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPosition = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$IndicatorSavedState;->b:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIPageIndicator2"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    if-eq v0, v1, :cond_a

    goto :goto_35

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->l:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_35

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a:[F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->callOnClick()Z

    goto :goto_35

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->l:J

    :cond_35
    :goto_35
    return v1
.end method

.method public setCurrentPosition(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a(IF)V

    return-void
.end method

.method public setDotsCount(I)V
    .registers 10

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_d5

    const-string v2, "COUIPageIndicator2"

    if-lez p1, :cond_74

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    new-instance v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    invoke-direct {v5, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;-><init>(I)V

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v6, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    iput v6, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a:I

    iget v4, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v4, v6

    iput v4, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    invoke-virtual {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->b()V

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v4, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    div-float/2addr v4, v6

    iput v4, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->e:F

    invoke-virtual {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->b()V

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iput v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e(Z)V

    iget v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    iget v6, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v3, v4, v6}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d(IF)V

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    sget-boolean v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v6, "addDot: current index = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_70

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    invoke-virtual {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a()V

    goto :goto_d1

    :cond_74
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iput v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    iget v5, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    int-to-float v5, v5

    iget v6, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    add-float/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_97

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    :cond_97
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e(Z)V

    iget v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    iget v5, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d(IF)V

    iget-object v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    sget-boolean v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v5, "removeDot: current index = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_d1

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_d5
    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->o:Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->e:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTraceDotColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

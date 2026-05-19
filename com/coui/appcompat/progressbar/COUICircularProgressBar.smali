.class public Lcom/coui/appcompat/progressbar/COUICircularProgressBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$ProgressBarType;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$ProgressBarSize;
    }
.end annotation


# instance fields
.field public final a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:F

.field public r:Landroid/content/Context;

.field public s:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

.field public t:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiCircularProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->c:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->j:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    if-eqz p2, :cond_26

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_large_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->c:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarSize:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgressBarTrackColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularPauseDrawableTint:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->f:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularErrorDrawableTint:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->g:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularProgress:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircularProgressBar_couiCircularMax:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circular_progress_default_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circular_progress_medium_stroke_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circular_progress_large_stroke_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->o:I

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b:I

    if-nez p3, :cond_bb

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->n:I

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    goto :goto_bf

    :cond_bb
    if-ne v1, p3, :cond_bf

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    :cond_bf
    :goto_bf
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    shr-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->p:F

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    shr-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->q:F

    new-instance p2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-direct {p2, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_db

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_db
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setProgress(I)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->c:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->e:I

    const/16 v3, 0x59

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    goto :goto_26

    :cond_19
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->e:I

    iget-object v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    :goto_26
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->c:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_4c

    iget-object v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->B:F

    iget v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->C:F

    iget v5, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->D:F

    iget v6, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->h:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->B:F

    iget v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->C:F

    iget v5, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->D:F

    iget v0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->h:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_56

    :cond_4c
    iget-object v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_56
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->d:I

    iget-object v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->f:I

    iput v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->d:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->g:I

    iput v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->e:I

    iget-object v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    iget-object v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v2, v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->p:F

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->j:I

    int-to-float v5, v4

    add-float/2addr v2, v5

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->q:F

    add-float/2addr v6, v5

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    mul-int/2addr v4, v1

    sub-int/2addr v5, v4

    int-to-float v1, v5

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    int-to-float v4, v4

    iput v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iput v6, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->o:F

    iput v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->p:F

    iput v2, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a:F

    iput v6, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b:F

    const/4 v2, 0x0

    cmpg-float v4, v1, v2

    const-string v5, "COUICircularDrawable"

    const-string v6, "Progress bar outer diameter should be greater than 0 !"

    if-gez v4, :cond_9e

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->p:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v4, v3, v2

    const-string v7, "Progress bar stroke width should be greater than 0 !"

    if-gez v4, :cond_b4

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->o:F

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->p:F

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iput v3, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a:F

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iput v3, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b:F

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->o:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_db

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->p:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v4, v3, v2

    if-gez v4, :cond_ef

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->o:F

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->p:F

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    iget-object v0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_diameter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_stroke_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v8, v1, v2

    if-gez v8, :cond_13d

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13d
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->g:F

    iget-object v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v9, v3, v2

    if-gez v9, :cond_14f

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14f
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->h:F

    iget-object v4, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v8, :cond_15f

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->g:F

    iget-object v0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v9, :cond_16f

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16f
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->h:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(IZ)V
    .registers 6

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    if-le p1, v0, :cond_8

    move p1, v0

    :cond_8
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    if-eq p1, v0, :cond_79

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmActualProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmVisualProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nanimate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUICircularDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->l:I

    int-to-float p1, p1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr p1, v1

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    if-eqz p2, :cond_66

    iget p2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    cmpl-float v1, p2, p1

    if-eqz v1, :cond_66

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->I:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->I:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_72

    :cond_66
    iput p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    iget-object p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->V:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    if-eqz p1, :cond_6f

    invoke-interface {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;->b()V

    :cond_6f
    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    :goto_72
    iget-object p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->V:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    if-eqz p1, :cond_79

    invoke-interface {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;->a()V

    :cond_79
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->t:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->s:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    if-nez p1, :cond_98

    new-instance p1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressBar;Lcom/coui/appcompat/progressbar/COUICircularProgressBar$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->s:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    goto :goto_9b

    :cond_98
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_9b
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->s:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a2
    return-void
.end method

.method public getMax()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    return p0
.end method

.method public getVisualProgress()F
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iput-object p0, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->E:Landroid/view/View;

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->E:Landroid/view/View;

    :cond_7
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->j:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    iput p0, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;->a:I

    return-object v1
.end method

.method public setMax(I)V
    .registers 5

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    :cond_4
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    if-eq p1, v1, :cond_34

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez p1, :cond_19

    const-string p1, "COUICircularDrawable"

    const-string v2, "Max value should not lesser than 0!"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_19
    move v0, p1

    :goto_1a
    iget p1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c:I

    if-eq v0, p1, :cond_29

    iget p1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->l:I

    if-ge v0, p1, :cond_27

    iput v0, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->l:I

    int-to-float p1, v0

    iput p1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    :cond_27
    iput v0, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c:I

    :cond_29
    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->l:I

    if-le p1, v0, :cond_34

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->m:I

    :cond_34
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz p0, :cond_6

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->V:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    :cond_6
    return-void
.end method

.method public setOnProgressStateAnimationListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz p0, :cond_6

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->W:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    :cond_6
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b(IZ)V

    return-void
.end method

.method public setProgressBarType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->c:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a()V

    return-void
.end method

.method public setProgressSize(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->b:I

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_circular_progress_medium_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->n:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    goto :goto_30

    :cond_1a
    if-ne v0, p1, :cond_30

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_circular_progress_large_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->o:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->k:I

    :cond_30
    :goto_30
    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->h:I

    shr-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->p:F

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->i:I

    shr-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->q:F

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->a()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

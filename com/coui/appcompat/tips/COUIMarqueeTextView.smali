.class public final Lcom/coui/appcompat/tips/COUIMarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;,
        Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:F

.field public d:F

.field public e:Z

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Landroid/animation/ValueAnimator;

.field public j:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

.field public final k:I

.field public l:F

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_top_tips_scroll_speed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->c:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/control/R$dimen;->coui_top_tips_scroll_text_start_location:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_top_tips_scroll_text_interval:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->k:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->c:F

    new-instance p1, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;-><init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->j:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_top_tips_fading_edge_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->m:Z

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->j:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void
.end method

.method private final getMContentHeight()F
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method private final setFadingEdgeStrength(F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->l:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->k:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->k:I

    if-nez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const-string v2, ""

    :goto_1c
    const/4 p0, 0x0

    if-ltz v0, :cond_2a

    :goto_1f
    const/16 v1, 0x20

    invoke-static {v2, v1}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v0, :cond_2a

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_2a
    return-object v2
.end method

.method public getLeftFadingEdgeStrength()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->l:F

    return p0
.end method

.method public getRightFadingEdgeStrength()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->l:F

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->m:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->e:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_top_tips_scroll_text_start_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->i:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->j:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->m:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_d
    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_65

    iget v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->f:I

    if-lt v0, v1, :cond_65

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->f:I

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    iget v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_50

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    iget v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->h:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->f:I

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    :cond_65
    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    iget v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->d:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->getMContentHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_a2

    iget-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->m:Z

    if-eqz p1, :cond_a5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->f:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->h:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->h:I

    div-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    if-ltz p1, :cond_94

    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    if-eq p2, p1, :cond_94

    add-int/lit8 p2, p2, 0x1

    goto :goto_7a

    :cond_94
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->b:I

    goto :goto_a5

    :cond_a2
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setMarqueeEnable(Z)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public final setMarqueeEnable(Z)V
    .registers 3

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_17

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v0, 0x0

    :goto_17
    invoke-direct {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setFadingEdgeStrength(F)V

    iput-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->m:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->a:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

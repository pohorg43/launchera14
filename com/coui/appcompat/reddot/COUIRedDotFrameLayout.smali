.class public Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/view/View;

.field public i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field public j:I

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->c:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->g:I

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->k:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_medium_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_large_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p2, :cond_5e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/support/appcompat/R$styleable;->COUIRedDotFrameLayout:[I

    invoke-virtual {v3, p2, v4, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIRedDotFrameLayout_couiHintRedPointMode:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIRedDotFrameLayout_couiHintRedPointText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->b:Ljava/lang/String;

    sget p3, Lcom/support/appcompat/R$styleable;->COUIRedDotFrameLayout_anchorViewShapeType:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->c:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUIRedDotFrameLayout_anchorViewDpSize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->j:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5e
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    const/4 p2, 0x2

    if-nez p1, :cond_65

    goto/16 :goto_15c

    :cond_65
    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->j:I

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ge p3, v1, :cond_b3

    if-eq p1, v3, :cond_6f

    if-ne p1, v4, :cond_7b

    :cond_6f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_small_reddot_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    :cond_7b
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->c:I

    if-nez p1, :cond_9f

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-ne p1, p2, :cond_91

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_small_number_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto/16 :goto_149

    :cond_91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_small_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto/16 :goto_149

    :cond_9f
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-eq p1, v3, :cond_a5

    if-ne p1, v4, :cond_149

    :cond_a5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_small_icon_topend_margin_circle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    goto/16 :goto_149

    :cond_b3
    if-lt p3, v2, :cond_105

    if-ne p1, p2, :cond_c4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_height_large:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->g:I

    goto :goto_d0

    :cond_c4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_large_reddot_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    :goto_d0
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->c:I

    if-nez p1, :cond_f2

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-ne p1, p2, :cond_e5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_large_number_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto :goto_149

    :cond_e5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_large_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto :goto_149

    :cond_f2
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-eq p1, v3, :cond_f8

    if-ne p1, v4, :cond_149

    :cond_f8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_large_icon_topend_margin_circle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    goto :goto_149

    :cond_105
    if-eq p1, v3, :cond_109

    if-ne p1, v4, :cond_115

    :cond_109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_medium_reddot_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    :cond_115
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->c:I

    if-nez p1, :cond_137

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-ne p1, p2, :cond_12a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_medium_number_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto :goto_149

    :cond_12a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_medium_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    goto :goto_149

    :cond_137
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-eq p1, v3, :cond_13d

    if-ne p1, v4, :cond_149

    :cond_13d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_medium_icon_topend_margin_circle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    :cond_149
    :goto_149
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-ne p1, v4, :cond_15c

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_mode_stroke_extra_diameter:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    :cond_15c
    :goto_15c
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-eqz p1, :cond_19e

    new-instance p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x800035

    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-ne p3, p2, :cond_18b

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->g:I

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setViewHeight(I)V

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_190

    :cond_18b
    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->f:I

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setDotDiameter(I)V

    :goto_190
    new-instance p2, Lcom/android/wm/shell/animation/c;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_19e
    return-void
.end method


# virtual methods
.method public getRedDotView()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_7e

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p3, :cond_7e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_19

    goto :goto_1a

    :cond_19
    move p3, p2

    :goto_1a
    if-nez p3, :cond_53

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    sub-int/2addr p4, p5

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p5

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_92

    :cond_53
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    iget-object p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {p1, p2, p2, p3, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->e:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_92

    :cond_7e
    if-eqz p1, :cond_92

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-nez p3, :cond_92

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_92
    :goto_92
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a:I

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    if-nez p1, :cond_29

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_29

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_24

    check-cast p2, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    goto :goto_26

    :cond_24
    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    :goto_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_29
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    if-eqz p1, :cond_43

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p2, :cond_43

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->d:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_56

    :cond_43
    if-eqz p1, :cond_56

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->i:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-nez p2, :cond_56

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_56
    :goto_56
    return-void
.end method

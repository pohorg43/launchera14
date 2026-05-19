.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;
.super Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;
.source ""


# static fields
.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Landroid/view/animation/Interpolator;

.field public static final f:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Z

.field public b:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->e:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .registers 14
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    const/4 p1, 0x0

    if-eqz p5, :cond_1d

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget p5, p5, Landroid/graphics/Insets;->bottom:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p5, v0

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1e

    :cond_1d
    move p5, p1

    :goto_1e
    if-eqz p2, :cond_1a5

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_37
    sget v0, Lcom/support/panel/R$id;->coordinator:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v3, p5

    int-to-float v4, v0

    const v5, 0x3f666666  # 0.9f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_51

    goto/16 :goto_1a5

    :cond_51
    if-lez v0, :cond_5d

    if-lez v2, :cond_5d

    add-int v3, v2, p5

    if-le v3, v0, :cond_5d

    sub-int/2addr v3, v0

    sub-int v3, p5, v3

    goto :goto_5e

    :cond_5d
    move v3, p5

    :goto_5e
    add-int/2addr v2, p5

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v0, v4, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v0

    if-nez p5, :cond_9d

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1a5

    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1a5

    :cond_9d
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    const/4 p5, 0x1

    if-eqz p3, :cond_ac

    move p3, p5

    goto :goto_ad

    :cond_ac
    move p3, p1

    :goto_ad
    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_c1

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_c1

    iget-object v5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c1
    if-nez v3, :cond_d8

    if-nez v4, :cond_d8

    instance-of v5, p2, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v5, :cond_d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1a5

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p1, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1a5

    :cond_d8
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->d(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v1, v6, p1

    aput v0, v6, p5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p5

    iput-object p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p5

    const/high16 v0, 0x43960000  # 300.0f

    const/high16 v1, 0x43480000  # 200.0f

    if-eqz p5, :cond_12e

    if-eqz p3, :cond_11d

    const/high16 p5, 0x43160000  # 150.0f

    int-to-float v1, v3

    mul-float/2addr v1, p5

    int-to-float p5, v4

    invoke-static {v1, p5, v0}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_151

    :cond_11d
    const/high16 p5, 0x42ea0000  # 117.0f

    int-to-float v0, v3

    mul-float/2addr v0, p5

    int-to-float p5, v4

    invoke-static {v0, p5, v1}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_151

    :cond_12e
    if-eqz p3, :cond_141

    const/high16 p5, 0x43040000  # 132.0f

    int-to-float v1, v3

    mul-float/2addr v1, p5

    int-to-float p5, v4

    invoke-static {v1, p5, v0}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_151

    :cond_141
    const/high16 p5, 0x43050000  # 133.0f

    int-to-float v0, v3

    mul-float/2addr v0, p5

    int-to-float p5, v4

    invoke-static {v0, p5, v1}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_151
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    float-to-long v6, p5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget p5, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v5, [F

    fill-array-data v1, :array_1a6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;

    invoke-direct {v4, p0, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;II)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    if-nez p3, :cond_18f

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    :cond_18f
    if-eqz p3, :cond_1a5

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    if-nez p0, :cond_1a5

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1a5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1a5
    :goto_1a5
    return-void

    :array_1a6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public b(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e(Z)V
    .registers 2

    return-void
.end method

.method public f(I)V
    .registers 2

    return-void
.end method

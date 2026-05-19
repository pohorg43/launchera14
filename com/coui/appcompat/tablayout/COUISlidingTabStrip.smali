.class public Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/animation/ValueAnimator;

.field public s:I

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .registers 4
    .param p2  # Lcom/coui/appcompat/tablayout/COUITabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->q:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->w:I

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i:Landroid/graphics/Paint;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_large_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->a:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_medium_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_small_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_small_tab_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->d:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_medium_tab_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->e:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/bars/R$dimen;->coui_tab_layout_content_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->f:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 20

    move-object/from16 v13, p0

    move/from16 v14, p1

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->q:I

    if-eq v14, v0, :cond_1a

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_21

    :cond_1a
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    :goto_22
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_29

    move v1, v2

    :cond_29
    invoke-virtual/range {p0 .. p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j()V

    return-void

    :cond_33
    move-object v6, v3

    check-cast v6, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v3, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v6}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_100

    iget-object v3, v6, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-nez v3, :cond_100

    invoke-virtual {v6}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v8, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    iget v9, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-virtual {v13, v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b(I)I

    move-result v12

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    invoke-virtual {v13, v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c(I)I

    move-result v11

    sub-int v1, v11, v12

    sub-int v3, v9, v8

    sub-int v10, v1, v3

    sub-int v15, v12, v8

    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sub-int v1, v14, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    add-int/lit16 v1, v1, 0x96

    const/16 v3, 0x12c

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->w:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9c

    move v1, v3

    :cond_9c
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    int-to-long v4, v1

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_192

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    if-eqz v0, :cond_c4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_c8

    :cond_c4
    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    :goto_c8
    move v4, v1

    if-eqz v0, :cond_d4

    invoke-virtual {v7}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_d8

    :cond_d4
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    :goto_d8
    move/from16 v16, v0

    new-instance v5, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v13, v5

    move-object v5, v7

    move-object v7, v6

    move/from16 v6, v16

    move-object v14, v7

    move v7, v9

    move v9, v10

    move v10, v15

    invoke-direct/range {v0 .. v12}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/tablayout/COUITabView;IIIIIII)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object v1, v14

    invoke-direct {v0, v8, v9}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_189

    :cond_100
    move-object v8, v13

    move v9, v14

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v4, v6, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v8, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b(I)I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v5, v6, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v8, v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c(I)I

    move-result v5

    iget v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    sub-int v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_131

    iget v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    iget v1, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    move v2, v0

    move v10, v1

    goto :goto_152

    :cond_131
    const/16 v0, 0x18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    if-ge v9, v2, :cond_14a

    if-eqz v1, :cond_14c

    goto :goto_14e

    :cond_14a
    if-eqz v1, :cond_14e

    :cond_14c
    add-int/2addr v0, v5

    goto :goto_150

    :cond_14e
    :goto_14e
    sub-int v0, v4, v0

    :goto_150
    move v2, v0

    move v10, v2

    :goto_152
    if-ne v2, v4, :cond_156

    if-eq v10, v5, :cond_189

    :cond_156
    new-instance v11, Landroid/animation/ValueAnimator;

    invoke-direct {v11}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v11, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p2

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_19a

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v12, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move v3, v4

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;IIII)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;ILcom/coui/appcompat/tablayout/COUITabView;Lcom/coui/appcompat/tablayout/COUITabView;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    :cond_189
    :goto_189
    iget-object v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->q:I

    return-void

    :array_192
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_19a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final b(I)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->d()Z

    move-result p0

    if-eqz p0, :cond_22

    if-lez v0, :cond_22

    add-int/2addr p1, v0

    :cond_22
    return p1
.end method

.method public final c(I)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->d()Z

    move-result p0

    if-eqz p0, :cond_22

    if-lez v0, :cond_22

    add-int/2addr p1, v0

    :cond_22
    return p1
.end method

.method public final d()Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e(Lcom/coui/appcompat/tablayout/COUITabView;II)V
    .registers 8

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_11
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_ab

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->d()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->e0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_55

    :cond_4f
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->e0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_55
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_67

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->g0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6d

    :cond_67
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->f0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_6d
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, p3}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    if-le v1, v2, :cond_ae

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_ae

    :cond_a3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_ae

    :cond_ab
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public f(II)V
    .registers 5

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x20

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p2, v0, p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    if-ne p2, p1, :cond_28

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    if-eq v0, p1, :cond_31

    :cond_28
    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_31
    return-void
.end method

.method public final g(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_1b
    return-void
.end method

.method public getBottomDividerPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getIndicatorAnimTime()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->w:I

    return p0
.end method

.method public getIndicatorBackgroundHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->s:I

    return p0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->t:I

    return p0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->u:I

    return p0
.end method

.method public getIndicatorBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getIndicatorLeft()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    return p0
.end method

.method public getIndicatorPosition()F
    .registers 2

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    add-float/2addr v0, p0

    return v0
.end method

.method public getIndicatorRight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    return p0
.end method

.method public getIndicatorWidthRatio()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->v:F

    return p0
.end method

.method public getSelectedIndicatorPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final h(Landroid/view/View;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public final i(Landroid/view/View;III)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr p4, p3

    add-int/2addr p4, p2

    iput p4, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public j()V
    .registers 12

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-nez v4, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    if-eqz v1, :cond_26

    iget-object v5, v1, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz v5, :cond_26

    move v2, v3

    :cond_26
    const/4 v5, -0x1

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_e4

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_1e7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_da

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_da

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v2, v0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz v2, :cond_73

    goto :goto_77

    :cond_73
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    :goto_77
    if-eqz v2, :cond_9a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_a2

    :cond_9a
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    :goto_a2
    sub-int/2addr v0, v5

    sub-int/2addr v1, v4

    sub-int v2, v0, v1

    sub-int v3, v5, v4

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_b2

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    :cond_b2
    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    iget v9, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    sub-float v9, v8, v9

    cmpl-float v7, v9, v7

    if-lez v7, :cond_c7

    int-to-float v0, v1

    int-to-float v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v4

    int-to-float v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_d5

    :cond_c7
    int-to-float v0, v0

    int-to-float v1, v2

    invoke-static {v6, v8, v1, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v5

    int-to-float v2, v3

    invoke-static {v6, v8, v2, v1}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v1

    float-to-int v1, v1

    :goto_d5
    move v4, v1

    add-int v1, v4, v0

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    :cond_da
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b(I)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c(I)I

    move-result v0

    goto/16 :goto_1e8

    :cond_e4
    if-eqz v2, :cond_1a3

    iget-object v0, v1, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_19e

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_192

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_192

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v2, v0, Lcom/coui/appcompat/tablayout/COUITabView;->e:Landroid/view/View;

    if-eqz v2, :cond_12b

    goto :goto_12f

    :cond_12b
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    :goto_12f
    if-eqz v2, :cond_152

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_15a

    :cond_152
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    :goto_15a
    sub-int/2addr v0, v5

    sub-int/2addr v1, v4

    sub-int v2, v0, v1

    sub-int v3, v5, v4

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_16a

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    :cond_16a
    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    iget v9, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    sub-float v9, v8, v9

    cmpl-float v7, v9, v7

    if-lez v7, :cond_17f

    int-to-float v0, v1

    int-to-float v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v4

    int-to-float v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_18d

    :cond_17f
    int-to-float v0, v0

    int-to-float v1, v2

    invoke-static {v6, v8, v1, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v5

    int-to-float v2, v3

    invoke-static {v6, v8, v2, v1}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v1

    float-to-int v1, v1

    :goto_18d
    move v4, v1

    add-int v1, v4, v0

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->l:F

    :cond_192
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b(I)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c(I)I

    move-result v0

    move v10, v5

    move v5, v0

    move v0, v10

    goto :goto_19f

    :cond_19e
    move v0, v5

    :goto_19f
    move v10, v5

    move v5, v0

    move v0, v10

    goto :goto_1e8

    :cond_1a3
    if-eqz v0, :cond_1e7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1e7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1e8

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1e8

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    sub-float v4, v6, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-int v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    sub-float/2addr v6, v1

    int-to-float v0, v0

    mul-float/2addr v6, v0

    add-float/2addr v6, v3

    float-to-int v0, v6

    goto :goto_1e8

    :cond_1e7
    move v0, v5

    :cond_1e8
    :goto_1e8
    invoke-virtual {p0, v5, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->f(II)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->G0:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j()V

    :cond_c
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    if-eqz p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    const/high16 p4, 0x3f800000  # 1.0f

    iget-object p5, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->a(II)V

    :cond_3c
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3, p2, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_15

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinMargin()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1f

    goto :goto_45

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_36

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->a:I

    goto :goto_45

    :cond_36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_43

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->b:I

    goto :goto_45

    :cond_43
    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->c:I

    :goto_45
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinDivider()I

    move-result v3

    if-eq v3, v2, :cond_4e

    goto :goto_72

    :cond_4e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->d(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_70

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_70

    :cond_6d
    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->d:I

    goto :goto_72

    :cond_70
    :goto_70
    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->e:I

    :goto_72
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMode()I

    move-result v2

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_121

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getDefaultIndicatoRatio()F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->v:F

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v4, v6

    move v5, v4

    :goto_90
    if-ge v4, v1, :cond_a6

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p0, v7, v6, v6}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->h(Landroid/view/View;II)V

    invoke-virtual {p0, v7, v2, p2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->e(Lcom/coui/appcompat/tablayout/COUITabView;II)V

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    :cond_a6
    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->f:I

    if-gt v4, v2, :cond_e8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->f:I

    if-lt v0, v2, :cond_c8

    sub-int/2addr v2, v5

    add-int/lit8 v4, p1, 0x1

    div-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->f:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_d2

    :cond_c8
    sub-int/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    :goto_d2
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v0, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g(II)V

    move v0, v6

    :goto_d8
    if-ge v0, p1, :cond_149

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i(Landroid/view/View;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    :cond_e8
    if-gt v4, v0, :cond_10a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr v0, v5

    mul-int v2, v3, p1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v0, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g(II)V

    move v0, v6

    :goto_fa
    if-ge v0, p1, :cond_149

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i(Landroid/view/View;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    :cond_10a
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g(II)V

    move p1, v6

    :goto_111
    if-ge p1, v1, :cond_149

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v0, v3, v3, v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_111

    :cond_121
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g(II)V

    move p1, v6

    :goto_130
    if-ge p1, v1, :cond_149

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v6}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->h(Landroid/view/View;II)V

    move-object v4, v2

    check-cast v4, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p0, v4, v0, p2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->e(Lcom/coui/appcompat/tablayout/COUITabView;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->i(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_130

    :cond_149
    move p1, v6

    :goto_14a
    if-ge v6, v1, :cond_158

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_14a

    :cond_158
    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public setBottomDividerColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->w:I

    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->s:I

    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->t:I

    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->u:I

    return-void
.end method

.method public setIndicatorLeft(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->o:I

    return-void
.end method

.method public setIndicatorRight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->p:I

    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->v:F

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setSelectedIndicatorHeight(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->n:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->n:I

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_b
    return-void
.end method

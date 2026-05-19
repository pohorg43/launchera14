.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;
.super Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;
.source ""


# static fields
.field public static final q:Landroid/view/animation/Interpolator;

.field public static final r:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Landroid/view/View;

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->q:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->r:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->a:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->c:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->j:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->k:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->m:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/support/panel/R$bool;->is_ignore_nav_height_in_panel_ime_adjust:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_19

    if-nez p4, :cond_19

    move p4, v0

    goto :goto_1a

    :cond_19
    move p4, v1

    :goto_1a
    if-eqz p4, :cond_21

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->a(Landroid/content/Context;)I

    move-result p1

    goto :goto_22

    :cond_21
    move p1, v1

    :goto_22
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p4

    iget p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->a:I

    const/16 v2, 0x7f6

    if-ne p5, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    sub-int/2addr p4, p1

    :goto_2e
    if-lez p4, :cond_34

    invoke-virtual {p0, p2, v0, p4}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g(Landroid/view/ViewGroup;ZI)V

    goto :goto_62

    :cond_34
    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3e

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    invoke-virtual {p0, p2, v1, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g(Landroid/view/ViewGroup;ZI)V

    :cond_3e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_62

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public b(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .registers 4

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_10
    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_15
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_19
    return-void
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x1

    :cond_12
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_23
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    :cond_25
    return v2
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->j:Z

    return-void
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->a:I

    return-void
.end method

.method public final g(Landroid/view/ViewGroup;ZI)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v8, 0x2

    iput v8, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    iget-boolean v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->k:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_16

    if-eqz v1, :cond_16

    iput v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    goto :goto_1c

    :cond_16
    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1c

    iput v4, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    :cond_1c
    :goto_1c
    iput-boolean v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->k:Z

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->c()Z

    instance-of v6, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v9, 0x3

    if-eqz v6, :cond_b6

    move-object v6, v0

    check-cast v6, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v6}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v10

    invoke-virtual {v6}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getLayoutAtMaxHeight()Z

    move-result v6

    const/high16 v11, 0x40000000  # 2.0f

    if-eqz v6, :cond_38

    move v6, v11

    goto :goto_3a

    :cond_38
    const/high16 v6, -0x80000000

    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v12, v6}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b6

    iput v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    iput-boolean v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->l:Z

    iput-object v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->m:Landroid/view/View;

    invoke-virtual {v7, v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->h(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5f

    iput-boolean v4, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->l:Z

    iput-object v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->m:Landroid/view/View;

    :cond_5f
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v12, 0x8

    if-eq v10, v12, :cond_81

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-nez v10, :cond_82

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_82

    :cond_81
    move v10, v5

    :cond_82
    :goto_82
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v10

    invoke-static {v6, v9}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v9, v11

    iput v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    :goto_94
    if-eqz v6, :cond_b6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eq v6, v9, :cond_b6

    invoke-virtual {v7, v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->h(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_a6

    iput-boolean v4, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->l:Z

    iput-object v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->m:Landroid/view/View;

    :cond_a6
    iget v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v9

    iput v10, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_94

    :cond_b6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    iput v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->c:I

    iget v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    if-eqz v9, :cond_da

    if-eq v9, v4, :cond_ce

    if-eq v9, v8, :cond_c5

    goto :goto_de

    :cond_c5
    iget-boolean v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->j:Z

    if-nez v6, :cond_de

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    goto :goto_de

    :cond_ce
    sub-int/2addr v6, v2

    iput v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->c:I

    iget v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    sub-int v6, v2, v6

    iput v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    goto :goto_de

    :cond_da
    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    :cond_de
    :goto_de
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    iput v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g:I

    const/4 v9, 0x0

    iput v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    iput v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->h:I

    iget v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    if-nez v3, :cond_f1

    goto/16 :goto_1da

    :cond_f1
    instance-of v6, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v10, -0x1

    if-eqz v6, :cond_1ca

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    if-ne v6, v8, :cond_fe

    goto :goto_ff

    :cond_fe
    move v10, v4

    :goto_ff
    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v6

    iget v11, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    mul-int/2addr v11, v10

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v12

    if-eqz v12, :cond_115

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v12

    goto :goto_116

    :cond_115
    move v12, v9

    :goto_116
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    iget-boolean v13, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->l:Z

    if-eqz v13, :cond_123

    if-nez v6, :cond_139

    :cond_123
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->l(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_154

    cmpl-float v6, v12, v9

    if-nez v6, :cond_154

    :cond_139
    iget-object v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->m:Landroid/view/View;

    if-eqz v2, :cond_150

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_14c

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    :cond_14c
    neg-int v2, v11

    int-to-float v2, v2

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    :cond_150
    iput v11, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g:I

    goto/16 :goto_1da

    :cond_154
    iget v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->c:I

    iget v13, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->f:I

    sub-int/2addr v6, v13

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v14

    if-eqz v14, :cond_16c

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v14

    goto :goto_16d

    :cond_16c
    move v14, v5

    :goto_16d
    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_17c

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_17d

    :cond_17c
    move v3, v5

    :goto_17d
    iget v15, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    if-ne v15, v4, :cond_185

    iget v15, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    add-int/2addr v6, v15

    goto :goto_18a

    :cond_185
    if-ne v15, v8, :cond_18a

    iget v15, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    sub-int/2addr v6, v15

    :cond_18a
    :goto_18a
    iget v15, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    add-int/2addr v15, v14

    add-int/2addr v15, v3

    if-lt v6, v15, :cond_197

    if-nez v13, :cond_197

    neg-int v2, v11

    int-to-float v2, v2

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    goto :goto_1da

    :cond_197
    sub-int/2addr v15, v6

    neg-int v3, v13

    mul-int/2addr v10, v15

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g:I

    iget v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    if-ne v3, v4, :cond_1bc

    add-int/2addr v13, v10

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->d:I

    neg-int v6, v3

    sub-int v2, v3, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    goto :goto_1da

    :cond_1bc
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c6

    sub-int/2addr v11, v15

    neg-int v2, v11

    int-to-float v2, v2

    goto :goto_1c7

    :cond_1c6
    neg-float v2, v12

    :goto_1c7
    iput v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    goto :goto_1da

    :cond_1ca
    iget v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->b:I

    if-ne v2, v8, :cond_1cf

    goto :goto_1d0

    :cond_1cf
    move v10, v4

    :goto_1d0
    mul-int/2addr v10, v3

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    iput v10, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->h:I

    :goto_1da
    iget-object v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_330

    instance-of v2, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/high16 v3, 0x43960000  # 300.0f

    const/high16 v6, 0x42f00000  # 120.0f

    const/high16 v10, 0x43480000  # 200.0f

    const/high16 v11, 0x42480000  # 50.0f

    if-eqz v2, :cond_2cf

    move-object v12, v0

    check-cast v12, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v12}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v0

    if-eqz v1, :cond_1fd

    iget v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v0, v0

    invoke-static {v1, v0, v3}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    goto :goto_206

    :cond_1fd
    iget v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    int-to-float v0, v0

    invoke-static {v1, v0, v10}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    :goto_206
    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    iget v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->g:I

    float-to-long v13, v0

    if-eqz v1, :cond_274

    if-nez v10, :cond_217

    goto :goto_274

    :cond_217
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v1, v8, [I

    aput v0, v1, v5

    aput v6, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v0, v6, :cond_249

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_250

    :cond_249
    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_250
    iget-object v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v11

    move-object v8, v4

    move/from16 v4, v16

    move-object v9, v5

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;IIII)V

    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;III)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_274
    :goto_274
    iget v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->i:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_32f

    invoke-virtual {v12}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v2

    if-nez v2, :cond_283

    goto/16 :goto_32f

    :cond_283
    invoke-virtual {v12}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    cmpg-float v1, v2, v0

    if-gez v1, :cond_2ae

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2b5

    :cond_2ae
    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_2b5
    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;

    invoke-direct {v2, v7, v12, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;

    invoke-direct {v1, v7, v12}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_32f

    :cond_2cf
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->d(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_2e3

    iget v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v2, v2

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v1

    goto :goto_2ec

    :cond_2e3
    iget v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    int-to-float v2, v2

    invoke-static {v1, v2, v10}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v1

    :goto_2ec
    iget v2, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->h:I

    float-to-long v3, v1

    if-eqz v2, :cond_32f

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v5

    const/4 v5, 0x1

    aput v2, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v1, v2, :cond_317

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_31c

    :cond_317
    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_31c
    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;

    invoke-direct {v1, v7, v0, v2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;I)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$6;

    invoke-direct {v1, v7, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$6;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    :cond_32f
    :goto_32f
    const/4 v5, 0x0

    :cond_330
    iput-boolean v5, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->j:Z

    return-void
.end method

.method public final h(Landroid/view/View;)Z
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p0, p1, Landroid/widget/ScrollView;

    if-nez p0, :cond_f

    instance-of p0, p1, Landroid/widget/AbsListView;

    if-nez p0, :cond_f

    instance-of p0, p1, Landroidx/core/view/ScrollingView;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

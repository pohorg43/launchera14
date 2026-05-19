.class public Lcom/coui/appcompat/snackbar/COUISnackBar;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;,
        Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;
    }
.end annotation


# static fields
.field public static final w:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/view/View;

.field public m:Z

.field private mSnackBarLayout:Landroid/view/ViewGroup;

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Runnable;

.field public r:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

.field public s:Landroid/graphics/Rect;

.field public t:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field public u:Z

.field public v:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e19999a  # 0.15f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_top_horizontal_tiny:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_top_horizontal_tiny:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_horizontal_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/snackbar/COUISnackBar;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getContainerWidth()I
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_24
    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->g()Z

    move-result v1

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_30
    return v0
.end method

.method private getMaxWidth()I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->calculateGridWidth(I)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .registers 9
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    instance-of v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_9

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_2d

    :cond_9
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_19

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_2d

    :cond_19
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1c
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_29

    check-cast p1, Landroid/view/View;

    goto :goto_2a

    :cond_29
    move-object p1, v0

    :cond_2a
    :goto_2a
    if-nez p1, :cond_2

    move-object p1, v1

    :goto_2d
    if-eqz p1, :cond_a4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurfaceTop:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/support/control/R$layout;->coui_snack_bar_show_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setParent(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    move p3, v1

    move p4, p3

    :goto_76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_96

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz v0, :cond_93

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 v0, 0x8

    if-eq p4, v0, :cond_92

    move p4, v3

    goto :goto_93

    :cond_92
    move p4, v1

    :cond_93
    :goto_93
    add-int/lit8 p3, p3, 0x1

    goto :goto_76

    :cond_96
    if-nez p4, :cond_9b

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9b
    return-object p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected theme to define couiColorSurfaceTop and couiColorPrimaryNeutral."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setActionText(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setParent(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->h:Landroid/view/ViewGroup;

    return-void
.end method

.method private setTinyParams(Landroid/widget/TextView;)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_bottom_single_lines_tiny:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_20

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/view/View;)I

    move-result p0

    if-eq p0, p2, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_20
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3e

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/snackbar/COUISnackBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$3;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_3e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final e(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const-string v0, "COUISnackBar"

    sget v1, Lcom/support/control/R$layout;->coui_snack_bar_item:I

    invoke-static {p1, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/view/View;

    sget v2, Lcom/support/control/R$id;->snack_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/view/View;

    sget v2, Lcom/support/control/R$id;->tv_snack_bar_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/view/View;

    sget v2, Lcom/support/control/R$id;->tv_snack_bar_action:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/view/View;

    sget v2, Lcom/support/control/R$id;->iv_snack_bar_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_3e
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1
    :try_end_46
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3e .. :try_end_46} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_46} :catch_4c

    if-ne v1, v2, :cond_4a

    move v1, v2

    goto :goto_61

    :cond_4a
    move v1, v3

    goto :goto_61

    :catch_4c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_55
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    invoke-static {v1}, Lcom/coui/appcompat/dialog/AppFeatureUtil;->a(Landroid/content/Context;)Z

    move-result v1

    :goto_61
    iput-boolean v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/coui/appcompat/snackbar/COUISnackBar$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    sget-object v1, Lcom/support/control/R$styleable;->COUISnackBar:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_7b
    sget v1, Lcom/support/control/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_93

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    sget v1, Lcom/support/control/R$styleable;->COUISnackBar_snackBarDisappearTime:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    :cond_93
    sget v1, Lcom/support/control/R$styleable;->COUISnackBar_couiSnackBarIcon:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_9c} :catch_a2
    .catchall {:try_start_7b .. :try_end_9c} :catchall_a0

    :goto_9c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bc

    :catchall_a0
    move-exception p0

    goto :goto_fd

    :catch_a2
    move-exception v1

    :try_start_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure setting COUISnackBar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_a0

    goto :goto_9c

    :goto_bc
    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerXXL:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result p2

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;ILandroid/content/Context;)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_snack_bar_shadow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/control/R$color;->coui_snack_bar_background_shadow_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_one:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {p2, v0, p0, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->l(Landroid/view/View;III)V

    return-void

    :goto_fd
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final g()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getActionText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDuration()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->o:I

    return p0
.end method

.method public i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p2  # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_35

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_35

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setActionText(Ljava/lang/String;)V

    if-eqz p2, :cond_35

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;

    invoke-direct {v0, p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar$1;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public j()V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->r:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;->onShown(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_52

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/guide/f;

    invoke-direct {v2, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_51

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_51
    return-void

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->h:Landroid/view/ViewGroup;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_16f

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getContainerWidth()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-le p1, p2, :cond_15

    move p1, p4

    goto :goto_16

    :cond_15
    move p1, p3

    :goto_16
    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    if-le p2, p4, :cond_20

    move p2, p4

    goto :goto_21

    :cond_20
    move p2, p3

    :goto_21
    iget-object p5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p2, :cond_56

    if-eqz p1, :cond_2e

    goto :goto_56

    :cond_2e
    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_vertical_tiny:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_3f

    :cond_3d
    iget p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    :goto_3f
    iput p1, p5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p1, :cond_47

    move p1, p3

    goto :goto_51

    :cond_47
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_horizontal_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_51
    invoke-virtual {p5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    move p1, p3

    goto :goto_70

    :cond_56
    :goto_56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_vertical_multi_lines:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_horizontal_no_icon_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    move p1, p4

    :goto_70
    if-eqz p1, :cond_10c

    iput-boolean p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->g()Z

    move-result p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_96
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_vertical_multi_lines:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p2, :cond_be

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    goto :goto_c0

    :cond_be
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    :goto_c0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    add-int/2addr p4, p2

    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-boolean p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p2, :cond_dd

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_bottom_multi_lines_tiny:I

    goto :goto_e3

    :cond_dd
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/control/R$dimen;->coui_snack_bar_action_margin_bottom_multi_lines:I

    :goto_e3
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p1, :cond_16f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_snack_bar_action_padding_tiny:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    invoke-virtual {p2, p3, p1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_16f

    :cond_10c
    iput-boolean p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-boolean p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz p4, :cond_12d

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setTinyParams(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setTinyParams(Landroid/widget/TextView;)V

    goto :goto_16f

    :cond_12d
    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->g()Z

    move-result p4

    if-eqz p4, :cond_162

    iget-object p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/view/View;)I

    move-result p4

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ne p3, p4, :cond_14a

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    goto :goto_16f

    :cond_14a
    if-ne p3, p1, :cond_157

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    goto :goto_16f

    :cond_157
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    goto :goto_16f

    :cond_162
    if-le p1, p2, :cond_16a

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    goto :goto_16f

    :cond_16a
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;I)V

    :cond_16f
    :goto_16f
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:I

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getMaxWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v3

    if-le v2, v1, :cond_63

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->grid_guide_column_card_margin_start:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v6, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    if-lez v2, :cond_6f

    if-eqz v0, :cond_6f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_6f
    iget-boolean v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$dimen;->coui_snack_bar_layout_margin_tiny:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->mSnackBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_98
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    goto :goto_31

    :cond_10
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31

    :cond_2a
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_31
    :goto_31
    return v0
.end method

.method public setContentText(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_15
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->p:Ljava/lang/String;

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->o:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public setIconDrawable(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/control/R$dimen;->coui_snack_bar_child_margin_horizontal_no_icon_start:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3b

    :cond_23
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_3b
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->r:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    return-void
.end method

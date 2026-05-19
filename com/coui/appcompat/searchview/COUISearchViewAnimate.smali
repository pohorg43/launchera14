.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;
.implements Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AddToolBarWay;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchViewState;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchViewType;
    }
.end annotation


# static fields
.field public static final A0:Landroid/animation/ArgbEvaluator;

.field public static final v0:[Ljava/lang/String;

.field public static final w0:Landroid/view/animation/Interpolator;

.field public static final x0:Landroid/view/animation/Interpolator;

.field public static final y0:Landroid/view/animation/Interpolator;

.field public static final z0:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:F

.field public final a:Landroid/graphics/Path;

.field public a0:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Path;

.field public b0:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/Paint;

.field public c0:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Paint;

.field public d0:Landroid/graphics/Rect;

.field public final e:[I

.field public e0:Landroid/graphics/Rect;

.field public final f:[I

.field public f0:Landroid/animation/ObjectAnimator;

.field public final g:Landroid/animation/ArgbEvaluator;

.field public g0:Z

.field public final h:Landroid/graphics/RectF;

.field public h0:Z

.field public final i:Landroid/graphics/Rect;

.field public i0:Z

.field public j:Landroid/content/Context;

.field public j0:Landroid/animation/AnimatorSet;

.field public k:Landroid/widget/ImageView;

.field public k0:Landroid/animation/ValueAnimator;

.field public l:Lcom/coui/appcompat/searchview/COUISearchView;

.field public l0:Landroid/animation/ValueAnimator;

.field public m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

.field public m0:Landroid/animation/ValueAnimator;

.field public n:Landroid/widget/ImageView;

.field public n0:Landroid/animation/AnimatorSet;

.field public o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public o0:Landroid/animation/ValueAnimator;

.field public volatile p:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

.field public p0:Landroid/animation/ValueAnimator;

.field public q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public q0:Landroid/animation/ValueAnimator;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public r0:Z

.field public s:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

.field public s0:Z

.field public t:Landroid/view/MenuItem;

.field public t0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

.field public u:Z

.field public u0:I

.field public v:Z

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/ImageView;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "TYPE_INSTANT_SEARCH"

    const-string v1, "TYPE_NON_INSTANT_SEARCH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v0:[Ljava/lang/String;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->z0:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A0:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSearchViewAnimateStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:[I

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Landroid/animation/ArgbEvaluator;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->z:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A:Z

    iput v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    iput v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->O:I

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->W:F

    iput-boolean v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i0:Z

    iput-boolean v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    const/16 v3, 0x10

    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u0:I

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r0:Z

    sget v5, Lcom/support/appcompat/R$layout;->coui_search_view_animate_layout:I

    invoke-static {p1, v5, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v5, Lcom/support/appcompat/R$id;->animated_search_icon:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    sget v5, Lcom/support/appcompat/R$id;->animated_search_view:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/searchview/COUISearchView;

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    sget v5, Lcom/support/appcompat/R$id;->animated_cancel_button:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget v5, Lcom/support/appcompat/R$id;->button_divider:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    sget v5, Lcom/support/appcompat/R$id;->coui_search_view_wrapper:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_a3

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_a3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_background_end_gap:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->C:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_background_start_gap:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->B:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_cancel_margin_small:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->F:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_cancel_margin_large:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->G:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_collapsed_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->P:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_wrapper_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->Q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_animate_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->R:I

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    if-nez v5, :cond_102

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    :cond_102
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    if-nez v5, :cond_10d

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    :cond_10d
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c0:Landroid/graphics/Rect;

    if-nez v5, :cond_118

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c0:Landroid/graphics/Rect;

    :cond_118
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d0:Landroid/graphics/Rect;

    if-nez v5, :cond_123

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d0:Landroid/graphics/Rect;

    :cond_123
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e0:Landroid/graphics/Rect;

    if-nez v5, :cond_12e

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e0:Landroid/graphics/Rect;

    :cond_12e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$color;->coui_search_view_selector_color_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$color;->coui_search_view_selector_color_pressed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->U:I

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$color;->coui_color_divider:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->E:I

    sget-object v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_view_input_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextSize:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v6}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v6

    int-to-float v5, v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v5}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_search_view_auto_complete_padding_end:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v4, v4, v6, v4}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    sget v6, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    sget v6, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-static {p1, p2, v6}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v6}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchViewAnimateType:I

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1cd

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1cd
    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_functionalButtonTextColor:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1de

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1de
    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_functionalButtonText:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1f0

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f7

    :cond_1f0
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget v6, Lcom/support/appcompat/R$string;->coui_search_view_cancel:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    :goto_1f7
    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v5}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    invoke-static {v5, p3, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p3

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v5, v4, p3}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-static {p3}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    sget p3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_buttonDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_21e

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_21e

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21e
    sget p3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_searchBackground:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    sget v5, Lcom/support/appcompat/R$id;->search_main_icon_btn:I

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    sget v5, Lcom/support/appcompat/R$id;->search_sub_icon_btn:I

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x:Landroid/widget/ImageView;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchViewMainIcon:I

    invoke-static {p1, p2, v5}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y:Landroid/widget/ImageView;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchViewSubIcon:I

    invoke-static {p1, p2, v5}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p3, Lcom/support/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w:Landroid/widget/ImageView;

    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w:Landroid/widget/ImageView;

    if-eqz p3, :cond_270

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_270
    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_android_gravity:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gravity "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "COUISearchViewAnimate"

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setGravity(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    new-array p1, v0, [F

    fill-array-data p1, :array_3f4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k0:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1c2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k0:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/c;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/c;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_3fc

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l0:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/b;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/b;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$12;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$12;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_404

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_40c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_414

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const-wide/16 v5, 0x15e

    const-wide/16 v7, 0x64

    if-nez p2, :cond_33e

    move-wide p2, v5

    goto :goto_33f

    :cond_33e
    move-wide p2, v7

    :goto_33f
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    iget p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez p3, :cond_351

    move-wide v9, v7

    goto :goto_353

    :cond_351
    const-wide/16 v9, 0x0

    :goto_353
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_41c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q0:Landroid/animation/ValueAnimator;

    iget p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez p3, :cond_37a

    goto :goto_37b

    :cond_37a
    move-wide v5, v7

    :goto_37b
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j0:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j0:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    new-array p3, p2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k0:Landroid/animation/ValueAnimator;

    aput-object v3, p3, v4

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l0:Landroid/animation/ValueAnimator;

    aput-object v3, p3, v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m0:Landroid/animation/ValueAnimator;

    aput-object v3, p3, v0

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n0:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n0:Landroid/animation/AnimatorSet;

    new-array p3, p2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o0:Landroid/animation/ValueAnimator;

    aput-object v3, p3, v4

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p0:Landroid/animation/ValueAnimator;

    aput-object v3, p3, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q0:Landroid/animation/ValueAnimator;

    aput-object v1, p3, v0

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAnimateType(I)V

    new-instance p1, Landroid/view/TouchDelegate;

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-direct {p1, v2, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :array_3f4
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_3fc
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_404
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_40c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_414
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_41c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v0, :cond_31

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->D:I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->D:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    return-void
.end method

.method public static b(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_14
    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    return-void
.end method

.method public static d(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Ljava/util/List;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;->a(II)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public static synthetic e(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "COUISearchViewAnimate"

    if-ne v0, p1, :cond_11

    const-string p0, "changeStateWithOutAnimation: same state , return. targetState = "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d6

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateWithOutAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_81

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-ne p1, v0, :cond_53

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_6e

    :cond_53
    if-nez p1, :cond_6e

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6e
    :goto_6e
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d3

    :cond_81
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    const-string v3, ""

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-ne p1, v0, :cond_a4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_bc

    :cond_a4
    if-nez p1, :cond_bc

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_bc
    :goto_bc
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_d6
    return-void
.end method

.method public static synthetic g(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p0

    return p0
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_15

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_10

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    return-object p0
.end method

.method private getOriginWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->B:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->C:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getShrinkWidth()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->G:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingEnd()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->C:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_36
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarAlpha(F)V

    return-void
.end method

.method private setCurrentBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t:Landroid/view/MenuItem;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_10
    return-void
.end method

.method private setToolBarAlpha(F)V
    .registers 2

    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;->a(Landroid/view/KeyEvent;)V

    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m(FF)Z

    move-result v0

    if-nez v0, :cond_c3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    if-eqz v0, :cond_c3

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p()V

    goto/16 :goto_c3

    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m(FF)Z

    move-result v0

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    if-eqz v0, :cond_c3

    :cond_43
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p()V

    goto/16 :goto_c3

    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_c8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_69

    goto :goto_c8

    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m(FF)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c3

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s0:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    aput v3, v0, v2

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->U:I

    aput v2, v0, v1

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->z0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A0:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_c3
    :goto_c3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c8
    :goto_c8
    return v2
.end method

.method public getAnimatorDuration()J
    .registers 3

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public getCancelIconAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v:Z

    return p0
.end method

.method public getFunctionalButton()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    return-object p0
.end method

.method public getGravity()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u0:I

    return p0
.end method

.method public getInputMethodAnimationEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A:Z

    return p0
.end method

.method public getMainIconView()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSearchState()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    return-object p0
.end method

.method public getSearchViewAnimateHeightPercent()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->W:F

    return p0
.end method

.method public getSubIconView()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method public j(I)V
    .registers 4

    const-string v0, "changeStateImmediately: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_10
    const-string v1, "state edit"

    goto :goto_15

    :cond_13
    const-string v1, "state normal"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISearchViewAnimate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_10

    const-string p0, "changeStateWithAnimation: same state , return. targetState = "

    const-string v0, "COUISearchViewAnimate"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    goto :goto_31

    :cond_22
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_31

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final l(F)F
    .registers 2

    const p0, 0x3e99999a  # 0.3f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final m(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public final n()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public o(Z)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "openSoftInput: "

    const-string v2, "COUISearchViewAnimate"

    invoke-static {v1, p1, v2}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    if-eqz p1, :cond_34

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_34
    if-eqz v0, :cond_55

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_55

    :cond_40
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_55
    :goto_55
    return-void
.end method

.method public onActionViewCollapsed()V
    .registers 1

    return-void
.end method

.method public onActionViewExpanded()V
    .registers 1

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i0:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    if-eqz v0, :cond_4f

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float v0, v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n()Z

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i0:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    xor-int/lit8 v8, v1, 0x1

    move v4, v0

    move v5, v1

    move v6, v8

    move v7, v1

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    iput-boolean v9, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i0:Z

    :cond_2b
    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    if-eqz v2, :cond_4f

    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    xor-int/lit8 v7, v1, 0x1

    move v4, v0

    move v5, v7

    move v6, v1

    move v8, v1

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    goto :goto_4d

    :cond_41
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v4, v0

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    :goto_4d
    iput-boolean v9, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    :cond_4f
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_73
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c0:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d0:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e0:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d0:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c0:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e0:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c0:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d0:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e0:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_46

    :cond_44
    move v0, v4

    goto :goto_47

    :cond_46
    :goto_46
    move v0, v3

    :goto_47
    if-eqz v0, :cond_4a

    return v4

    :cond_4a
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_63

    return v3

    :cond_63
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:[I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:[I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    int-to-float p4, p4

    const/4 p5, 0x1

    aget v0, p2, p5

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:[I

    aget v1, v1, p5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aget p2, p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p3}, Landroid/widget/Button;->getWidth()I

    move-result p3

    add-int/2addr p3, p2

    int-to-float p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:[I

    aget p3, p3, p5

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:[I

    aget p5, v1, p5

    sub-int/2addr p3, p5

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p5}, Landroid/widget/Button;->getHeight()I

    move-result p5

    add-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_30

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->C:I

    mul-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq v0, p1, :cond_30

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    iget v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->a:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchViewAnimateHeightPercent(F)V

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->W:F

    iput p0, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->a:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public final p()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    aput v2, v0, v1

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->z0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A0:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final q()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    :cond_1d
    return-void
.end method

.method public r()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u:Z

    if-nez v1, :cond_e

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u:Z

    :cond_e
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_40

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$6;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q()V

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A:Z

    if-eqz v1, :cond_3f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o(Z)V

    :cond_3f
    return-void

    :array_40
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final s()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_44

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :goto_44
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_85

    :cond_74
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :goto_85
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i0:Z

    goto/16 :goto_10e

    :cond_95
    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_f6

    :cond_bb
    if-ne v0, v1, :cond_f6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_f6

    :cond_c9
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_f6

    :cond_e9
    if-ne v0, v1, :cond_f6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_f6
    :goto_f6
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h0:Z

    :goto_10e
    return-void
.end method

.method public setCancelButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCancelDividerImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->w:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_11
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_18
    return-void
.end method

.method public setExtraActivateMarginTop(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->O:I

    return-void
.end method

.method public setFunctionalButtonText(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u0:I

    if-eq v0, p1, :cond_16

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x10

    :cond_14
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u0:I

    :cond_16
    return-void
.end method

.method public setHintTextViewHintTextColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintTextViewTextColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintViewBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintViewLayoutOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setIconCanAnimate(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setInputHintTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    return-void
.end method

.method public setInputMethodAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->A:Z

    return-void
.end method

.method public setInputTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    return-void
.end method

.method public setMainIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->x:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnAnimationListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    return-void
.end method

.method public setOnDispatchKeyEventPreImeListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setSearchAnimateType(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    const-string p0, "setSearchAnimateType to "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v0:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed in STATE_EDIT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchViewAnimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/16 v0, 0x8

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->G:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8d

    :cond_5b
    if-ne p1, v1, :cond_8d

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->F:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public setSearchBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 7

    if-eqz p1, :cond_24

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->U:I

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    if-ne p1, v0, :cond_21

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    :cond_21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_24
    return-void
.end method

.method public setSearchViewAnimateHeightPercent(F)V
    .registers 8

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->W:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->P:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->Q:I

    int-to-float v3, v3

    const v4, 0x3f333333  # 0.7f

    div-float v4, p1, v4

    const v5, 0x3edb6db8

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Float;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l(F)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v3, v2

    const/high16 v2, -0x40800000  # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l(F)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v5, v3

    mul-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->R:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v4, p1

    mul-float/2addr v4, v0

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    const/high16 v2, 0x3f000000  # 0.5f

    sub-float v2, p1, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l(F)F

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->T:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->S:I

    return-void
.end method

.method public setSearchViewBackgroundColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->y:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

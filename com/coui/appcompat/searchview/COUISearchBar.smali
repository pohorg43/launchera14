.class public Lcom/coui/appcompat/searchview/COUISearchBar;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/view/CollapsibleActionView;
.implements Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;,
        Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;,
        Lcom/coui/appcompat/searchview/COUISearchBar$SearchViewState;,
        Lcom/coui/appcompat/searchview/COUISearchBar$SearchViewType;
    }
.end annotation


# static fields
.field public static final r0:Landroid/view/animation/Interpolator;

.field public static final s0:Landroid/view/animation/Interpolator;

.field public static final t0:Landroid/view/animation/Interpolator;

.field public static final u0:Landroid/view/animation/Interpolator;

.field public static final v0:Landroid/animation/ArgbEvaluator;

.field public static final w0:[Ljava/lang/String;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Landroid/view/MenuItem;

.field public E:Z

.field public F:Z

.field public G:[I

.field public H:[I

.field public N:[I

.field public O:[I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public final a:Landroid/graphics/Rect;

.field public a0:I

.field public final b:Landroid/graphics/Rect;

.field public b0:I

.field public final c:Landroid/graphics/Path;

.field public c0:I

.field public final d:Landroid/graphics/Paint;

.field public d0:I

.field public final e:Landroid/graphics/Paint;

.field public e0:I

.field public f:Landroid/widget/EditText;

.field public f0:I

.field public g:Landroid/widget/TextView;

.field public g0:I

.field public h:Landroid/widget/ImageView;

.field public h0:I

.field public i:Landroid/widget/ImageView;

.field public i0:I

.field public j:Landroid/widget/ImageView;

.field public j0:F

.field public k:Landroid/widget/ImageView;

.field public k0:F

.field public l:Landroid/widget/ImageView;

.field public l0:F

.field public m:Landroid/widget/ImageView;

.field public m0:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

.field public n:Landroid/widget/ImageView;

.field public n0:Z

.field public o:Landroid/animation/AnimatorSet;

.field public o0:Z

.field public p:Landroid/animation/ValueAnimator;

.field public volatile p0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public q:Landroid/animation/ValueAnimator;

.field public q0:I

.field public r:Landroid/animation/ValueAnimator;

.field public s:Landroid/animation/AnimatorSet;

.field public t:Landroid/animation/ValueAnimator;

.field public u:Landroid/animation/ValueAnimator;

.field public v:Landroid/animation/ValueAnimator;

.field public w:Landroid/animation/ObjectAnimator;

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->r0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->s0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->t0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->u0:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->v0:Landroid/animation/ArgbEvaluator;

    const-string v0, "TYPE_INSTANT_SEARCH"

    const-string v1, "TYPE_NON_INSTANT_SEARCH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->w0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSearchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->c:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->x:F

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h0:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i0:I

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j0:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k0:F

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n0:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->o0:Z

    new-instance v3, Landroid/widget/EditText;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$style;->Widget_COUI_EditText_SearchBarStyle:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    new-instance v6, Lcom/coui/appcompat/searchview/COUISearchBar$1;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$style;->couiTextAppearanceButton:I

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    sget v6, Lcom/support/appcompat/R$string;->coui_search_view_cancel:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$color;->coui_searchview_cancel_button_color:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-static {v3, v1, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_113

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h0:I

    :cond_113
    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h0:I

    if-nez v1, :cond_119

    iput p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h0:I

    :cond_119
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_view_collapsed_min_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$color;->coui_color_divider:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_non_instant_search_inner_gap:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_normal_background_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->Q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_inner_search_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_inner_search_icon_start_gap:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->S:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_divider_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->T:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_divider_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->U:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_outer_button_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->V:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_navigation_button_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->W:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_outer_button_gap_between_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_max_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_start_gap:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->c0:I

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_end_gap_compat:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_end_gap_medium:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_functional_button_end_gap_expanded:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v5

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->G:[I

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_navigation_button_start_gap_compat:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_navigation_button_start_gap_medium:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_navigation_button_start_gap_expanded:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v5

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->H:[I

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_outer_button_end_gap_compat:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_outer_button_end_gap_medium:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_search_bar_outer_button_end_gap_expanded:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v5

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->N:[I

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_search_bar_responsive_horizontal_padding_compat:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_search_bar_responsive_horizontal_padding_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_bar_responsive_horizontal_padding_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->O:[I

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISearchBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_inputTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_287

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setTextSize(F)V

    :cond_287
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_inputTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_298

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_298
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_normalHintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2a9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2a9
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_functionalButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2ba

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2ba
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_functionalButtonTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2cb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2cb
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_couiSearchIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2d8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_2ee

    :cond_2d8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$drawable;->coui_search_view_icon:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p2, p3, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2ee
    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    if-nez p3, :cond_2f8

    invoke-virtual {p0, p2, v0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    :cond_2f8
    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p0, p3, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_searchHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_310

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_310
    sget p2, Lcom/support/appcompat/R$styleable;->COUISearchBar_couiSearchClearSelector:I

    sget p3, Lcom/support/appcompat/R$drawable;->coui_search_view_icon:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i0:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$color;->coui_search_view_selector_color_normal:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$color;->coui_search_view_selector_color_pressed:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->B:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->C:I

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    return-void
.end method

.method public static a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_9

    const/4 p0, 0x0

    goto :goto_b

    :cond_9
    const/16 p0, 0x8

    :goto_b
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m0:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m0:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m0:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    return-object p0
.end method

.method private getInternalPaddingEnd()I
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->O:[I

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget p0, v0, p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method private getInternalPaddingStart()I
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->O:[I

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget p0, v0, p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method private setCurrentBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->D:Landroid/view/MenuItem;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->D:Landroid/view/MenuItem;

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
.method public final b(III)I
    .registers 4

    const/4 p0, 0x2

    invoke-static {p2, p3, p0, p1}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result p0

    return p0
.end method

.method public final c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0, p3, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_16
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;
    .registers 5

    if-eqz p1, :cond_21

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_14
    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1d

    sget p2, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

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

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->e(FF)Z

    move-result v0

    if-nez v0, :cond_cd

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    if-eqz v0, :cond_cd

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->n()V

    goto/16 :goto_cd

    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->e(FF)Z

    move-result v0

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    if-eqz v0, :cond_cd

    :cond_43
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->n()V

    goto/16 :goto_cd

    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_d2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_65

    goto :goto_d2

    :cond_65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->f(FF)Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_cd

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->E:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_a2
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    aput v3, v0, v2

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->B:I

    aput v2, v0, v1

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBar;->u0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBar;->v0:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_cd
    :goto_cd
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_d2
    :goto_d2
    return v2
.end method

.method public final e(FF)Z
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final f(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public final g(Landroid/view/View;FF)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_29

    const/4 p0, 0x1

    :cond_29
    return p0
.end method

.method public getFunctionalButton()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public getInnerPrimaryButton()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getInnerSecondaryButton()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getInputMethodAnimationEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n0:Z

    return p0
.end method

.method public getNavigationView()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getOuterPrimaryButton()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getOuterSecondaryButton()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getQuickDeleteButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSearchEditText()Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method public getSearchState()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchViewAnimateHeightPercent()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j0:F

    return p0
.end method

.method public final h()Z
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

.method public final i(I)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, v2, v0, p1, p0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_44

    :cond_33
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, p1, v0, v2, p0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final j(I)I
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_20

    :cond_1f
    move v0, p1

    :goto_20
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_3b
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_56
    if-eq v0, p1, :cond_5b

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    sub-int/2addr v0, p0

    :cond_5b
    return v0
.end method

.method public final k(Landroid/graphics/Rect;II)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    return-void
.end method

.method public final l(Landroid/view/View;II)I
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public m(Z)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "openSoftInput: "

    invoke-static {v1, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v2, "COUISearchBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_4b

    :cond_34
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final n()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    aput v2, v0, v1

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBar;->u0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBar;->v0:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final o(Landroid/view/View;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_1b

    move p0, v1

    :cond_1b
    return p0

    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_23

    move p0, v1

    :cond_23
    return p0
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
    .registers 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBar;->v0:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->f(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->g(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v0, v1

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v4

    :goto_34
    if-eqz v0, :cond_37

    goto :goto_45

    :cond_37
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_40

    return v4

    :cond_40
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_45
    :goto_45
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 14

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_51

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0, p2, p1, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->H:[I

    iget p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget p4, p4, p5

    sub-int v5, p1, p4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int v3, v5, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    goto :goto_51

    :cond_3d
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->H:[I

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget v3, p1, p4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    add-int v5, p1, v3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p0, p2, p1, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p5

    if-eqz p5, :cond_90

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_7b

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getLeft()I

    move-result p5

    goto :goto_87

    :cond_7b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p5

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f0:I

    sub-int/2addr v0, v1

    sub-int/2addr p5, v0

    :goto_87
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p5, v0

    goto :goto_ae

    :cond_90
    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_9f

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getRight()I

    move-result p5

    goto :goto_a6

    :cond_9f
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result p5

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f0:I

    sub-int/2addr p5, v0

    :goto_a6
    move v0, p5

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    add-int/2addr p5, v0

    :goto_ae
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1, p5, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p1

    int-to-float p1, p4

    const/high16 p4, 0x40000000  # 2.0f

    div-float v2, p1, p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->c:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p0, p4, p1, p5}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_11c

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p1

    if-eqz p1, :cond_106

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->S:I

    sub-int v5, p1, p4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int v3, v5, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    goto :goto_11c

    :cond_106
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->S:I

    add-int v3, p1, p4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    add-int v5, p1, v3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    :cond_11c
    :goto_11c
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p0, p4, p1, p5}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p4

    if-eqz p4, :cond_14d

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p5, v0, p1, p4, v1}, Landroid/widget/EditText;->layout(IIII)V

    goto :goto_164

    :cond_14d
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p5, p4, p1, v0, v1}, Landroid/widget/EditText;->layout(IIII)V

    :goto_164
    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p1

    if-eqz p1, :cond_20d

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLeft()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1a0

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int v3, p1, p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    move v1, v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    :cond_1a0
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1d0

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int v3, p1, p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    move v1, v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    :cond_1d0
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_200

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int v3, p1, p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    move v1, v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    :cond_200
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getLeft()I

    move-result p4

    if-eq p1, p4, :cond_2af

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    sub-int/2addr p1, p4

    goto/16 :goto_2af

    :cond_20d
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getRight()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_243

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int v5, p4, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    move v1, v4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p1, p4

    :cond_243
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_273

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int v5, p4, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    move v1, v4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p1, p4

    :cond_273
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_2a4

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int v5, p4, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    move v1, v4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    move p1, p4

    :cond_2a4
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getRight()I

    move-result p4

    if-eq p1, p4, :cond_2af

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    add-int/2addr p1, p4

    :cond_2af
    :goto_2af
    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-ne p4, p3, :cond_2fb

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p5, p4, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result v0

    if-eqz v0, :cond_2e2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    sub-int v1, p1, v1

    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_2ec

    :cond_2e2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    add-int/2addr v1, p1

    :goto_2ec
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p4, v0, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->i(I)V

    :cond_2fb
    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez p1, :cond_319

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p1

    if-eqz p1, :cond_30d

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    sub-int/2addr p1, p2

    goto :goto_314

    :cond_30d
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    add-int/2addr p1, p2

    :goto_314
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->i(I)V

    goto/16 :goto_3d2

    :cond_319
    if-ne p1, p3, :cond_3d2

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->h()Z

    move-result p1

    if-eqz p1, :cond_37a

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a0:I

    sub-int/2addr p1, p3

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_354

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int v3, p1, p3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    move v1, v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_354
    move v5, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3d2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int v3, v5, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    goto :goto_3d2

    :cond_37a
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a0:I

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_3ad

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    add-int v5, p3, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    move v1, v4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p1, p3

    :cond_3ad
    move v3, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3d2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(III)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    add-int v5, p1, v3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    move v1, v4

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/searchview/a;->a(Landroid/widget/ImageView;ILandroid/widget/ImageView;III)V

    :cond_3d2
    :goto_3d2
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->e(Landroid/content/Context;I)Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    goto :goto_40

    :cond_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_30

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    goto :goto_40

    :cond_30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_40

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    :cond_40
    :goto_40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v1, :cond_86

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-eq v1, v0, :cond_5d

    goto :goto_86

    :cond_5d
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->W:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v1

    sub-int v1, p1, v1

    if-eq v1, p1, :cond_85

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    if-eqz p1, :cond_85

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->H:[I

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget p1, p1, v3

    sub-int/2addr v1, p1

    :cond_85
    move p1, v1

    :cond_86
    :goto_86
    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-eq v1, v0, :cond_8b

    goto :goto_de

    :cond_8b
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->V:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v1

    sub-int v1, p1, v1

    goto :goto_ab

    :cond_aa
    move v1, p1

    :goto_ab
    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->V:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result v3

    sub-int/2addr v1, v3

    :cond_c8
    if-eq v1, p1, :cond_dd

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    if-eqz p1, :cond_da

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->N:[I

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget p1, p1, v3

    sub-int/2addr v1, p1

    :cond_da
    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a0:I

    sub-int/2addr v1, p1

    :cond_dd
    move p1, v1

    :goto_de
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result v1

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b0:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    :cond_fb
    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v1, :cond_13d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->c0:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->G:[I

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->y:I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    int-to-float v4, v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000  # 1.0f

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k0:F

    invoke-static {v1, v5, p1, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f0:I

    mul-int/2addr v4, p2

    add-int/2addr v4, p1

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d0:I

    int-to-float p2, p2

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->Q:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->x:F

    mul-float/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Float;->max(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v1, v4, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->k(Landroid/graphics/Rect;II)V

    goto :goto_152

    :cond_13d
    if-ne v1, v0, :cond_152

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->d0:I

    int-to-float v1, v1

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->Q:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->x:F

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Float;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p2, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->k(Landroid/graphics/Rect;II)V

    :cond_152
    :goto_152
    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, p2, v1, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    move-result p2

    sub-int p2, p1, p2

    if-eq p2, p1, :cond_16b

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->S:I

    sub-int/2addr p2, p1

    :cond_16b
    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez p1, :cond_174

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->j(I)I

    move-result p2

    goto :goto_19f

    :cond_174
    if-ne p1, v0, :cond_19f

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_19b

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    add-int/2addr p1, v1

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-ne p1, v0, :cond_19b

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->b:Landroid/graphics/Rect;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->T:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->U:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->k(Landroid/graphics/Rect;II)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->P:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->T:I

    sub-int/2addr p2, p1

    :cond_19b
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->j(I)I

    move-result p2

    :cond_19f
    :goto_19f
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->Q:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->l(Landroid/view/View;II)I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    iget v0, v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->a:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->setSearchViewAnimateHeightPercent(F)V

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j0:F

    iput p0, v1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->a:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_22
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_30
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_37
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    if-eqz p0, :cond_3e

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3e
    return-void
.end method

.method public setExtraActivateMarginTop(I)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->d:I

    return-void
.end method

.method public setFunctionalButtonText(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInnerPrimaryButton(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_15
    return-void
.end method

.method public setInnerSecondaryButton(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_15
    return-void
.end method

.method public setInputMethodAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->n0:Z

    return-void
.end method

.method public setNavigationViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_2d

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    sget v1, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_action_bar_navigation_padding_start_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2d
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->i:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setOuterPrimaryButton(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->V:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_14
    return-void
.end method

.method public setOuterSecondaryButton(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->d(Landroid/graphics/drawable/Drawable;ZZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->V:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_14
    return-void
.end method

.method public setSearchAnimateType(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const-string p0, "setSearchAnimateType to "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->w0:[Ljava/lang/String;

    aget-object p1, v0, p1

    const-string v0, " is not allowed in STATE_EDIT"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string p1, "COUISearchBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSearchBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 7

    if-eqz p1, :cond_24

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->B:I

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    if-ne p1, v0, :cond_21

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    :cond_21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_24
    return-void
.end method

.method public setSearchViewAnimateHeightPercent(F)V
    .registers 8

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j0:F

    const v0, 0x3f333333  # 0.7f

    div-float v0, p1, v0

    const v1, 0x3edb6db8

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->x:F

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a  # 0.3f

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f0:I

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->e0:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v0, v3

    sub-float v5, v2, p1

    mul-float/2addr v5, v0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    const/high16 v5, 0x3f000000  # 0.5f

    sub-float/2addr p1, v5

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_44
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_4b
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_52

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_52
    sget-object p1, Lcom/coui/appcompat/searchview/COUISearchBar;->v0:Landroid/animation/ArgbEvaluator;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->z:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->R:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setUseResponsivePadding(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->F:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

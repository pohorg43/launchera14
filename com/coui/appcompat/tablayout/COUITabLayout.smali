.class public Lcom/coui/appcompat/tablayout/COUITabLayout;
.super Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$TabGravity;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$Mode;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;
    }
.end annotation


# static fields
.field public static final L0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/coui/appcompat/tablayout/COUITab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:F

.field public final E:I

.field public E0:I

.field public final F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

.field public F0:Z

.field public final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITab;",
            ">;"
        }
    .end annotation
.end field

.field public G0:Z

.field public final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field public H0:I

.field public I0:I

.field public J0:I

.field public K0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;",
            ">;"
        }
    .end annotation
.end field

.field public final N:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/coui/appcompat/tablayout/COUITabView;",
            ">;"
        }
    .end annotation
.end field

.field public O:I

.field public P:I

.field public Q:Lcom/coui/appcompat/tablayout/COUITab;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Landroid/content/res/ColorStateList;

.field public W:Landroid/graphics/Typeface;

.field public a0:Landroid/graphics/Typeface;

.field public b0:I

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:Z

.field public i0:I

.field public j0:I

.field public k0:F

.field public l0:F

.field public m0:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n0:I

.field public o0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

.field public p0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

.field public q0:Landroid/animation/ValueAnimator;

.field public r0:Landroid/animation/ArgbEvaluator;

.field public s0:Landroidx/viewpager/widget/ViewPager;

.field public t0:Landroidx/viewpager/widget/PagerAdapter;

.field public u0:Landroid/database/DataSetObserver;

.field public v0:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

.field public w0:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

.field public x0:Z

.field public y0:I

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->L0:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/bars/R$attr;->couiTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    sget v0, Lcom/support/bars/R$style;->COUITabLayoutBaseStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/util/Pools$SimplePool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->N:Landroidx/core/util/Pools$Pool;

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->k0:F

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:Landroid/animation/ArgbEvaluator;

    iput-boolean v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G0:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    if-eqz p2, :cond_3a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_3a
    const-string v4, "sans-serif-medium"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->W:Landroid/graphics/Typeface;

    const-string v4, "sans-serif"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->a0:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-direct {v4, p1, p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;-><init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v4, v2, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/support/bars/R$styleable;->COUITabLayout:[I

    invoke-virtual {p1, p2, v5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {v4, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorHeight(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->y0:I

    invoke-virtual {v4, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabBottomDividerColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->E0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabBottomDividerEnabled:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F0:Z

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->E0:I

    invoke-virtual {v4, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setBottomDividerColor(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundHeight(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundColor(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingLeft:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingLeft(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingRight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingRight(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorWidthRatio:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorWidthRatio(F)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$dimen;->coui_tablayout_default_resize_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$dimen;->tablayout_long_text_view_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabMinDivider:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->A0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabMinMargin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->B0:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$dimen;->coui_tablayout_indicator_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    sget v0, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabPaddingStart:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabPaddingTop:I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabPaddingEnd:I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabPaddingBottom:I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabTextAppearance:I

    sget v0, Lcom/support/bars/R$style;->TextAppearance_Design_COUITab:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    :try_start_149
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->l0:F

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;
    :try_end_15a
    .catchall {:try_start_149 .. :try_end_15a} :catchall_236

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    :cond_16b
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDisabledNeutral:I

    invoke-static {p3, v0, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->z0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1b1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->z0:I

    const/4 v6, 0x3

    new-array v7, v6, [[I

    new-array v6, v6, [I

    const/4 v8, 0x2

    new-array v9, v8, [I

    fill-array-data v9, :array_23c

    aput-object v9, v7, v2

    aput p3, v6, v2

    new-array p3, v8, [I

    fill-array-data p3, :array_244

    aput-object p3, v7, v4

    aput v5, v6, v4

    sget-object p3, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    aput-object p3, v7, v8

    aput v0, v6, v8

    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    :cond_1b1
    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->i0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabBackground:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->E:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabMode:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->n0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabGravity:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->m0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabEnableVibrator:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->h0:Z

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabIndicatorDisableColor:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/bars/R$color;->couiTabIndicatorDisableColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->I0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabTextSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1f9

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->l0:F

    :cond_1f9
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->J0:I

    sget p3, Lcom/support/bars/R$styleable;->COUITabLayout_couiTabButtonMarginEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H0:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_dot_horizontal_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->e0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_dot_vertical_offset_only_red:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->f0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_dot_vertical_offset_number_red:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->g0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->n()V

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->y()V

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    return-void

    :catchall_236
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    nop

    :array_23c
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data

    :array_244
    .array-data 4
        -0x10100a1
        -0x101009e
    .end array-data
.end method

.method private getDefaultHeight()I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v3, :cond_22

    iget-object v4, v3, Lcom/coui/appcompat/tablayout/COUITab;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_22

    iget-object v3, v3, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v1, 0x1

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    :goto_25
    if-eqz v1, :cond_2a

    const/16 p0, 0x48

    goto :goto_2c

    :cond_2a
    const/16 p0, 0x30

    :goto_2c
    return p0
.end method

.method private getScrollPosition()F
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorPosition()F

    move-result p0

    return p0
.end method

.method private getTabMinWidth()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private getTabScrollRange()I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private setSelectedTabView(I)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1d

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1d

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->m(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->m(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->m(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->m(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f2

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingRight()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_47
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v0

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft()I

    move-result v3

    if-le v0, v3, :cond_c7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v6, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    add-int/2addr v6, v0

    if-gt v4, v5, :cond_a0

    :goto_9e
    move v0, v2

    goto :goto_a4

    :cond_a0
    if-lt v3, v6, :cond_a3

    goto :goto_9e

    :cond_a3
    move v0, v1

    :goto_a4
    if-eqz v0, :cond_c7

    if-ge v3, v5, :cond_a9

    move v3, v5

    :cond_a9
    if-le v4, v6, :cond_ac

    move v4, v6

    :cond_ac
    int-to-float v6, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->n:I

    sub-int/2addr v0, v3

    int-to-float v7, v0

    int-to-float v8, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c7
    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F0:Z

    if-eqz v0, :cond_f2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    add-int/2addr v3, v0

    int-to-float v6, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getBottomDividerPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_f2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bars/R$dimen;->coui_tab_layout_button_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne p1, v1, :cond_153

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H0:I

    if-eq p1, v3, :cond_116

    goto :goto_11f

    :cond_116
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/bars/R$dimen;->coui_tab_layout_button_default_horizontal_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :goto_11f
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_12c

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    goto :goto_138

    :cond_12c
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    :goto_138
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    throw v0

    :cond_153
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v4, :cond_1b9

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b9

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H0:I

    if-eq p1, v3, :cond_168

    goto :goto_171

    :cond_168
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/support/bars/R$dimen;->coui_tab_layout_multi_button_default_horizontal_margin:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :goto_171
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_184

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_layout_multi_button_default_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    goto :goto_193

    :cond_184
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_layout_multi_button_default_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    :goto_193
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    throw v0

    :cond_1b9
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultIndicatoRatio()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->D0:F

    return p0
.end method

.method public getIndicatorBackgroundHeight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundHeight()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingRight()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaintColor()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public getIndicatorPadding()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    return p0
.end method

.method public getIndicatorWidthRatio()F
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000  # -1.0f

    return p0

    :cond_7
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorWidthRatio()F

    move-result p0

    return p0
.end method

.method public getRequestedTabMaxWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    return p0
.end method

.method public getRequestedTabMinWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->i0:I

    return p0
.end method

.method public getSelectedIndicatorColor()I
    .registers 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->y0:I

    return p0
.end method

.method public getSelectedTabPosition()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    goto :goto_8

    :cond_7
    const/4 p0, -0x1

    :goto_8
    return p0
.end method

.method public getTabCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->m0:I

    return p0
.end method

.method public getTabMinDivider()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->A0:I

    return p0
.end method

.method public getTabMinMargin()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->B0:I

    return p0
.end method

.method public getTabMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->n0:I

    return p0
.end method

.method public getTabPaddingBottom()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    return p0
.end method

.method public getTabPaddingEnd()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    return p0
.end method

.method public getTabPaddingStart()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    return p0
.end method

.method public getTabPaddingTop()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    return p0
.end method

.method public getTabStrip()Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    return-object p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabTextSize()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->l0:F

    return p0
.end method

.method public l(Lcom/coui/appcompat/tablayout/COUITab;Z)V
    .registers 8
    .param p1  # Lcom/coui/appcompat/tablayout/COUITab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-ne v1, p0, :cond_3b

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_17
    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_26

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITab;

    iput v0, v2, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    goto :goto_17

    :cond_26
    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->b()V

    :cond_3a
    return-void

    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "COUITab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/coui/appcompat/tablayout/COUITabItem;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabItem;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->r()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v0

    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    iput-object v1, v0, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    :cond_13
    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    iput-object v1, v0, Lcom/coui/appcompat/tablayout/COUITab;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    :cond_1c
    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->c:I

    if-eqz v1, :cond_23

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tablayout/COUITab;->c(I)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/tablayout/COUITab;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    :cond_36
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->l(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    return-void

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_2d
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void
.end method

.method public final o(IF)I
    .registers 8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1e

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    goto :goto_33

    :cond_32
    move v3, v1

    :goto_33
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    :cond_45
    div-int/lit8 p1, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_72

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    goto :goto_87

    :cond_72
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :goto_87
    add-int/2addr p1, v0

    :cond_88
    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_97

    add-int/2addr p1, p2

    goto :goto_98

    :cond_97
    sub-int/2addr p1, p2

    :goto_98
    return p1

    :cond_99
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_15

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->x(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_15
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->x0:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->x0:Z

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->d0:Z

    if-eqz p1, :cond_20

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    if-ltz p1, :cond_20

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_20

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->d0:Z

    iget p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->o(IF)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_20
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v1, v2, :cond_30

    if-eqz v1, :cond_2b

    goto :goto_3c

    :cond_2b
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3c

    :cond_30
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_3c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->J0:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4d

    int-to-float v1, v0

    const v4, 0x3f333333  # 0.7f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    :cond_4d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v3, :cond_58

    invoke-virtual {p0, v1, v1}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void

    :cond_58
    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->n0:I

    if-eqz p1, :cond_6c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_60

    goto :goto_7a

    :cond_60
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    goto :goto_7a

    :cond_6c
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v3, 0x1fffffff

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    :goto_7a
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_24

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayout$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$1;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_24
    return-void
.end method

.method public q(I)Lcom/coui/appcompat/tablayout/COUITab;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    :cond_9
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tablayout/COUITab;

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public r()Lcom/coui/appcompat/tablayout/COUITab;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->L0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITab;

    if-nez v0, :cond_f

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-direct {v0}, Lcom/coui/appcompat/tablayout/COUITab;-><init>()V

    :cond_f
    iput-object p0, v0, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->N:Landroidx/core/util/Pools$Pool;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-nez v1, :cond_28

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/coui/appcompat/tablayout/COUITabView;-><init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    :cond_28
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tablayout/COUITabView;->setTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabView;->setEnabled(Z)V

    iput-object v1, v0, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    return-object v0
.end method

.method public s()V
    .registers 7

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->t()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v2, v1, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    check-cast v1, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;

    move v2, v3

    :goto_15
    if-ge v2, v0, :cond_45

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->r()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    invoke-virtual {p0, v4, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->l(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2d
    move v1, v3

    :goto_2e
    if-ge v1, v0, :cond_45

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->r()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v2

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->l(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_45
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_63

    if-lez v0, :cond_63

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_63

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_63

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->u(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    :cond_63
    return-void
.end method

.method public setEnableVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->h0:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->y0:I

    goto :goto_a

    :cond_8
    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->I0:I

    :goto_a
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz v1, :cond_23

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabView;->setEnabled(Z)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorAnimTime(I)V

    :cond_7
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundHeight(I)V

    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundPaddingLeft(I)V

    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundPaddingRight(I)V

    return-void
.end method

.method public setIndicatorPadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->C0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->D0:F

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorWidthRatio(F)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .registers 4
    .param p1  # Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->o0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->o0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public setRequestedTabMaxWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->J0:I

    return-void
.end method

.method public setRequestedTabMinWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->i0:I

    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->p()V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->y0:I

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .registers 2

    return-void
.end method

.method public setTabMinDivider(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->A0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabMinMargin(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->B0:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p1, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->n0:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->n0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->n()V

    :cond_9
    return-void
.end method

.method public setTabPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingEnd(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingStart(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingTop(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_20

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->y()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p1, :cond_20

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public setTabTextSize(F)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->l0:F

    :cond_6
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 3
    .param p1  # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->v(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setUpdateindicatorposition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G0:Z

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 4
    .param p1  # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->x(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public t()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz v0, :cond_2c

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v3, :cond_26

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/tablayout/COUITabView;->setTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/tablayout/COUITabView;->setSelected(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->N:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_26
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->c:Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->e:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    iput v4, v3, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    iput-object v2, v3, Lcom/coui/appcompat/tablayout/COUITab;->g:Landroid/view/View;

    sget-object v4, Lcom/coui/appcompat/tablayout/COUITabLayout;->L0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v4, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_56
    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITab;

    iput-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:Z

    return-void
.end method

.method public u(Lcom/coui/appcompat/tablayout/COUITab;Z)V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1e

    if-eqz v0, :cond_d4

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_e
    if-ltz p2, :cond_d4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->a(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_e

    :cond_1e
    if-eqz p1, :cond_23

    iget v2, p1, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    if-eqz p2, :cond_91

    const/4 p2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2e

    iget v4, v0, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    if-ne v4, v1, :cond_34

    :cond_2e
    if-eq v2, v1, :cond_34

    invoke-virtual {p0, v2, p2, v3, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    goto :goto_89

    :cond_34
    if-ne v2, v1, :cond_37

    goto :goto_89

    :cond_37
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_86

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_4b
    if-ge v7, v5, :cond_5c

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-gtz v8, :cond_59

    move v4, v3

    goto :goto_5d

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_5c
    move v4, v6

    :goto_5d
    if-eqz v4, :cond_60

    goto :goto_86

    :cond_60
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0, v2, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->o(IF)I

    move-result p2

    if-eq v4, p2, :cond_7e

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->p()V

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v6

    aput p2, v7, v3

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_7e
    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    const/16 v3, 0x12c

    invoke-virtual {p2, v2, v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->a(II)V

    goto :goto_89

    :cond_86
    :goto_86
    invoke-virtual {p0, v2, p2, v3, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    :goto_89
    if-eq v2, v1, :cond_8e

    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setSelectedTabView(I)V

    :cond_8e
    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    goto :goto_a0

    :cond_91
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_a0

    iget-boolean p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->h0:Z

    if-eqz p2, :cond_a0

    const/16 p2, 0x12e

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->performHapticFeedback(I)Z

    :cond_a0
    :goto_a0
    if-eqz v0, :cond_b9

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_a9
    if-ltz p2, :cond_b9

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->c(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_a9

    :cond_b9
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz p1, :cond_d4

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_c4
    if-ltz p2, :cond_d4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->b(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_c4

    :cond_d4
    return-void
.end method

.method public v(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .registers 5
    .param p1  # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->u0:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_21

    if-eqz p1, :cond_21

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->u0:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1c

    new-instance p2, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->u0:Landroid/database/DataSetObserver;

    :cond_1c
    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->u0:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_21
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->s()V

    return-void
.end method

.method public w(IFZZ)V
    .registers 11

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_124

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto/16 :goto_124

    :cond_12
    if-eqz p4, :cond_2d

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget-object v1, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_25
    iput p1, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    iput p2, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    invoke-virtual {p4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j()V

    goto :goto_44

    :cond_2d
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget p4, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq p4, v1, :cond_44

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    iput v1, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j()V

    :cond_44
    :goto_44
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_53

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_53

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->o(IF)I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_124

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->k0:F

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x3f000000  # 0.5f

    cmpl-float p1, p1, p3

    const/4 v1, 0x0

    if-gtz p1, :cond_70

    cmpl-float p1, p2, v1

    if-nez p1, :cond_72

    :cond_70
    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    :cond_72
    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->k0:F

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:I

    if-eq v0, p1, :cond_ee

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_ee

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabView;

    cmpl-float v2, p2, p3

    if-ltz v2, :cond_97

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabView;

    sub-float v3, p2, p3

    goto :goto_a3

    :cond_97
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabView;

    sub-float v3, p3, p2

    :goto_a3
    div-float/2addr v3, p3

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_c9

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c9
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_ee

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v2, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ee
    cmpl-float p1, p2, v1

    if-nez p1, :cond_124

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result p1

    if-ge v0, p1, :cond_124

    move p1, p4

    :goto_f9
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result p2

    const/4 p3, 0x1

    if-ge p1, p2, :cond_122

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_118

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_118
    if-ne p1, v0, :cond_11b

    goto :goto_11c

    :cond_11b
    move p3, p4

    :goto_11c
    invoke-virtual {p2, p3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f9

    :cond_122
    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->d0:Z

    :cond_124
    :goto_124
    return-void
.end method

.method public final x(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .registers 7
    .param p1  # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->v0:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->p0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->p0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    :cond_20
    const/4 v0, 0x0

    if-eqz p1, :cond_76

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->v0:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-nez v1, :cond_30

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->v0:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    :cond_30
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->v0:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    iput v0, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;->b:I

    iput v0, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;->c:I

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->p0:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->v(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_5a
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    if-nez v0, :cond_65

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    :cond_65
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    iput-boolean p2, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->a:Z

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    goto :goto_7b

    :cond_76
    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->v(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :goto_7b
    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->x0:Z

    return-void
.end method

.method public final y()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimaryText:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    return-void

    :array_50
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

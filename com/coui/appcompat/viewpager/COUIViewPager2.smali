.class public Lcom/coui/appcompat/viewpager/COUIViewPager2;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearSmoothScrollerImpl;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$OffscreenPageLimit;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$ScrollState;,
        Lcom/coui/appcompat/viewpager/COUIViewPager2$Orientation;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

.field public d:I

.field public e:Z

.field public f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public g:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public h:I

.field public i:Landroid/os/Parcelable;

.field public j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

.field public k:Landroidx/recyclerview/widget/PagerSnapHelper;

.field public l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

.field public m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

.field public n:Lcom/coui/appcompat/viewpager/COUIFakeDrag;

.field public o:Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;

.field public p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

.field public u:Landroid/view/animation/Interpolator;

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    new-instance v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->s:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    new-instance v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->s:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b:Landroid/graphics/Rect;

    new-instance p3, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->s:I

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    const/16 p3, 0x1f4

    iput p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollingTouchSlop(I)V

    sget-object v4, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_3d
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->setOrientation(I)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_d2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$4;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIFakeDrag;

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-direct {v0, p0, p1, v1}, Lcom/coui/appcompat/viewpager/COUIFakeDrag;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->n:Lcom/coui/appcompat/viewpager/COUIFakeDrag;

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->k:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iput-object p1, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    new-instance v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v1, v1, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->f(Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->o:Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_d2
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public b()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->n:Lcom/coui/appcompat/viewpager/COUIFakeDrag;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iget-boolean p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->m:Z

    return p0
.end method

.method public c()Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canScrollHorizontally(I)Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public canScrollVertically(I)Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .registers 2
    .param p1  # Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->a:I

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e()V

    return-void
.end method

.method public final e()V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v2, :cond_1e

    instance-of v3, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v3, :cond_1b

    move-object v3, v0

    check-cast v3, Landroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    :cond_1b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->i:Landroid/os/Parcelable;

    :cond_1e
    const/4 v2, 0x0

    iget v3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->k()V

    return-void
.end method

.method public f(IZ)V
    .registers 12

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    :cond_12
    return-void

    :cond_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_1a

    return-void

    :cond_1a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-ne p1, v0, :cond_3c

    if-eqz p2, :cond_3c

    return-void

    :cond_3c
    int-to-double v3, v0

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->o()V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->isIdle()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->updateScrollEventValues()V

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget v3, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    int-to-double v3, v3

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->b:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    :cond_5a
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    const/4 v5, 0x2

    if-eqz p2, :cond_61

    move v6, v5

    goto :goto_62

    :cond_61
    const/4 v6, 0x3

    :goto_62
    iput v6, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    iput-boolean v1, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->m:Z

    iget v6, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    if-eq v6, p1, :cond_6b

    move v1, v2

    :cond_6b
    iput p1, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    if-eqz v1, :cond_79

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_79

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_79
    if-nez p2, :cond_81

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_81
    int-to-double v0, p1

    sub-double v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L  # 3.0

    cmpl-double p2, v5, v7

    if-lez p2, :cond_a7

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    cmpl-double v0, v0, v3

    if-lez v0, :cond_97

    add-int/lit8 v0, p1, -0x3

    goto :goto_99

    :cond_97
    add-int/lit8 v0, p1, 0x3

    :goto_99
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    new-instance p2, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;

    invoke-direct {p2, p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_ac

    :cond_a7
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    :goto_ac
    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->k:Landroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->m:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->onPageSelected(I)V

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    return p0
.end method

.method public getDuration()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getItemDecorationCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->s:I

    return p0
.end method

.method public getOrientation()I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getPageSize()I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_16

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_23

    :cond_16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    :goto_23
    sub-int/2addr p0, v0

    return p0
.end method

.method public getScrollState()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 9

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->a:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g()V

    :cond_50
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->b:I

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->i:Landroid/os/Parcelable;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->a:I

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    :cond_18
    iput v0, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v0, :cond_21

    iput-object v0, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->c:Landroid/os/Parcelable;

    goto :goto_33

    :cond_21
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Landroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v0, :cond_33

    check-cast p0, Landroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {p0}, Landroidx/viewpager2/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2$SavedState;->c:Landroid/os/Parcelable;

    :cond_33
    :goto_33
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support direct child views"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->b(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->j(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e()V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_29
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f(IZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setDispatchEventWhileOverScrolling(Z)V

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->n()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->s:I

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->p()V

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setOverScrollEnable(Z)V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .registers 6
    .param p1  # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    iget-boolean v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    :cond_12
    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_28

    :cond_18
    iget-boolean v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->p:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->q:Z

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->o:Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;

    iget-object v1, v0, Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;->b:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-ne p1, v1, :cond_2f

    return-void

    :cond_2f
    iput-object p1, v0, Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;->b:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez p1, :cond_34

    goto :goto_55

    :cond_34
    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->updateScrollEventValues()V

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget v0, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    int-to-double v0, v0

    iget p1, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->b:F

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->o:Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/viewpager/COUIPageTransformerAdapter;->onPageScrolled(IFI)V

    :goto_55
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->q()V

    return-void
.end method

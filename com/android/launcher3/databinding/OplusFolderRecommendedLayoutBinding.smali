.class public final Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final footerTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nestedRecycleViewContainer:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedFooterPlaceHolder:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedLoadFailMsg:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedNext:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;Lcom/android/launcher/folder/recommend/view/RecommendContainer;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)V
    .registers 9
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher/folder/recommend/view/RecommendContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->footerTitle:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->nestedRecycleViewContainer:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->recommendedFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    iput-object p5, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->recommendedFooterPlaceHolder:Landroid/view/View;

    iput-object p6, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->recommendedLoadFailMsg:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->recommendedNext:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->recommendedRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;
    .registers 12
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02c3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_59

    const v0, 0x7f0a0422

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    if-eqz v5, :cond_59

    const v0, 0x7f0a04ca

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    if-eqz v6, :cond_59

    const v0, 0x7f0a04cb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_59

    const v0, 0x7f0a04cc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_59

    const v0, 0x7f0a04cd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_59

    const v0, 0x7f0a04ce

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz v10, :cond_59

    new-instance v0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;Lcom/android/launcher/folder/recommend/view/RecommendContainer;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)V

    return-object v0

    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d01bf

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusFolderRecommendedLayoutBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

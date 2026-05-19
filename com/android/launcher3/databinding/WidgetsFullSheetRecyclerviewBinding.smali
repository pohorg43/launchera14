.class public final Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final primaryWidgetsListView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recommendedWidgetTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchAndRecommendationsContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchBarContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->primaryWidgetsListView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->recommendedWidgetTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->searchAndRecommendationsContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->searchBarContainer:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;
    .registers 10
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a04a2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eqz v4, :cond_44

    const v0, 0x7f0a04cf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    if-eqz v5, :cond_44

    const v0, 0x7f0a0509

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    if-eqz v6, :cond_44

    const v0, 0x7f0a050c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_44

    const v0, 0x7f0a062b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_44

    new-instance v0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;-><init>(Landroid/view/View;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_44
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;
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

    const v0, 0x7f0d0297

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetRecyclerviewBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

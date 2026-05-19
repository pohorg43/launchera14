.class public final Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;
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

.field public final tabPersonal:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabWork:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetsViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final workWidgetsListView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;Landroid/widget/TextView;Lcom/android/launcher3/workprofile/PersonalWorkPagedView;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .registers 12
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
    .param p6  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Lcom/android/launcher3/workprofile/PersonalWorkPagedView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->primaryWidgetsListView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->recommendedWidgetTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->searchAndRecommendationsContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->searchBarContainer:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->tabPersonal:Landroid/widget/Button;

    iput-object p7, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->tabWork:Landroid/widget/Button;

    iput-object p8, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->tabs:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    iput-object p9, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->title:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->widgetsViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    iput-object p11, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->workWidgetsListView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;
    .registers 15
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

    if-eqz v4, :cond_80

    const v0, 0x7f0a04cf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    if-eqz v5, :cond_80

    const v0, 0x7f0a0509

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    if-eqz v6, :cond_80

    const v0, 0x7f0a050c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_80

    const v0, 0x7f0a05d9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_80

    const v0, 0x7f0a05da

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_80

    const v0, 0x7f0a05dc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    if-eqz v10, :cond_80

    const v0, 0x7f0a062b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_80

    const v0, 0x7f0a06e1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-eqz v12, :cond_80

    const v0, 0x7f0a06e8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eqz v13, :cond_80

    new-instance v0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;-><init>(Landroid/view/View;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;Landroid/widget/TextView;Lcom/android/launcher3/workprofile/PersonalWorkPagedView;Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    return-object v0

    :cond_80
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;
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

    const v0, 0x7f0d0296

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/WidgetsFullSheetPagedViewBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

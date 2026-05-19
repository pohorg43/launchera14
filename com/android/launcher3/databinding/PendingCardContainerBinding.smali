.class public final Lcom/android/launcher3/databinding/PendingCardContainerBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardPage:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardPageBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardPin:Lcom/android/launcher3/popup/pendingcard/PendingCardPin;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardPreviewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/widget/ImageView;Lcom/coui/appcompat/indicator/COUIPageIndicator2;Lcom/android/launcher3/popup/pendingcard/PendingCardPin;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V
    .registers 7
    .param p1  # Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/coui/appcompat/indicator/COUIPageIndicator2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/popup/pendingcard/PendingCardPin;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iput-object p2, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->cardPage:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->cardPageBg:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->cardPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iput-object p5, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->cardPin:Lcom/android/launcher3/popup/pendingcard/PendingCardPin;

    iput-object p6, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->cardPreviewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PendingCardContainerBinding;
    .registers 10
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a016c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-eqz v4, :cond_3b

    const v0, 0x7f0a016d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3b

    const v0, 0x7f0a016e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v6, :cond_3b

    const v0, 0x7f0a0172

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/popup/pendingcard/PendingCardPin;

    if-eqz v7, :cond_3b

    move-object v8, p0

    check-cast v8, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    new-instance p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/databinding/PendingCardContainerBinding;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/widget/ImageView;Lcom/coui/appcompat/indicator/COUIPageIndicator2;Lcom/android/launcher3/popup/pendingcard/PendingCardPin;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V

    return-object p0

    :cond_3b
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/PendingCardContainerBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PendingCardContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PendingCardContainerBinding;
    .registers 5
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d01e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PendingCardContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->getRoot()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/PendingCardContainerBinding;->rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

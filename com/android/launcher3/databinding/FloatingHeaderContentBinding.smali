.class public final Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appsDividerView:Lcom/android/launcher3/appprediction/AppsDividerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final predictionRow:Lcom/android/launcher3/appprediction/PredictionRowView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/android/launcher3/appprediction/AppsDividerView;Lcom/android/launcher3/appprediction/PredictionRowView;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/appprediction/AppsDividerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/appprediction/PredictionRowView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;->appsDividerView:Lcom/android/launcher3/appprediction/AppsDividerView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;->predictionRow:Lcom/android/launcher3/appprediction/PredictionRowView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00bc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appprediction/AppsDividerView;

    if-eqz v1, :cond_1c

    const v0, 0x7f0a0496

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v2, :cond_1c

    new-instance v0, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;-><init>(Landroid/view/View;Lcom/android/launcher3/appprediction/AppsDividerView;Lcom/android/launcher3/appprediction/PredictionRowView;)V

    return-object v0

    :cond_1c
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;
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

    const v0, 0x7f0d0122

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

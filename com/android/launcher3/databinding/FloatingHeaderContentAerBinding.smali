.class public final Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aerAllAppsDivider:Lcom/android/launcher/views/AerAppsDividerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aerAllAppsHeaderDivider:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aerAllAppsHeaderTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aerPredictionAppsDivider:Lcom/android/launcher/views/AerPredictionDividerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aerPredictionAppsHeaderDivider:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aerPredictionAppsHeaderTitle:Landroid/widget/TextView;
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
.method private constructor <init>(Landroid/view/View;Lcom/android/launcher/views/AerAppsDividerView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/launcher/views/AerPredictionDividerView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/launcher3/appprediction/PredictionRowView;)V
    .registers 9
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher/views/AerAppsDividerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher/views/AerPredictionDividerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher3/appprediction/PredictionRowView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerAllAppsDivider:Lcom/android/launcher/views/AerAppsDividerView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerAllAppsHeaderDivider:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerAllAppsHeaderTitle:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerPredictionAppsDivider:Lcom/android/launcher/views/AerPredictionDividerView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerPredictionAppsHeaderDivider:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->aerPredictionAppsHeaderTitle:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->predictionRow:Lcom/android/launcher3/appprediction/PredictionRowView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;
    .registers 12
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0084

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher/views/AerAppsDividerView;

    if-eqz v4, :cond_5c

    const v0, 0x7f0a0085

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5c

    const v0, 0x7f0a0086

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5c

    const v0, 0x7f0a0087

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher/views/AerPredictionDividerView;

    if-eqz v7, :cond_5c

    const v0, 0x7f0a0088

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_5c

    const v0, 0x7f0a0089

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5c

    const v0, 0x7f0a0496

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v10, :cond_5c

    new-instance v0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;-><init>(Landroid/view/View;Lcom/android/launcher/views/AerAppsDividerView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/launcher/views/AerPredictionDividerView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/launcher3/appprediction/PredictionRowView;)V

    return-object v0

    :cond_5c
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;
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

    const v0, 0x7f0d0123

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/FloatingHeaderContentAerBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

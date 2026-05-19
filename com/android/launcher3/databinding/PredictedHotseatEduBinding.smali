.class public final Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hotseatEduContent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hotseatEduHeading:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hotseatWrapper:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noThanks:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final samplePrediction:Lcom/android/launcher3/CellLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final turnPredictionsOn:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/android/launcher3/CellLayout;Landroid/widget/Button;)V
    .registers 9
    .param p1  # Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/launcher3/CellLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->rootView:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    iput-object p2, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->buttonContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->hotseatEduContent:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->hotseatEduHeading:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->hotseatWrapper:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->noThanks:Landroid/widget/Button;

    iput-object p7, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->samplePrediction:Lcom/android/launcher3/CellLayout;

    iput-object p8, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->turnPredictionsOn:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;
    .registers 12
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0153

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5e

    const v0, 0x7f0a031d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5e

    const v0, 0x7f0a031e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5e

    const v0, 0x7f0a0326

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5e

    const v0, 0x7f0a042e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_5e

    const v0, 0x7f0a04f2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/CellLayout;

    if-eqz v9, :cond_5e

    const v0, 0x7f0a065b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_5e

    new-instance v0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/android/launcher3/CellLayout;Landroid/widget/Button;)V

    return-object v0

    :cond_5e
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;
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

    const v0, 0x7f0d01f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->getRoot()Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/PredictedHotseatEduBinding;->rootView:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    return-object p0
.end method

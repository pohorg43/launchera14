.class public final Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linear:Lcom/android/launcher/views/LauncherLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final locateIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher/views/LauncherLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher/views/LauncherLoadingView;Lcom/android/launcher/views/LauncherLoadingView;Landroid/widget/ImageView;)V
    .registers 4
    .param p1  # Lcom/android/launcher/views/LauncherLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher/views/LauncherLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->rootView:Lcom/android/launcher/views/LauncherLoadingView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->linear:Lcom/android/launcher/views/LauncherLoadingView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->locateIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/launcher/views/LauncherLoadingView;

    const v1, 0x7f0a03ab

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    new-instance p0, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;

    invoke-direct {p0, v0, v0, v2}, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;-><init>(Lcom/android/launcher/views/LauncherLoadingView;Lcom/android/launcher/views/LauncherLoadingView;Landroid/widget/ImageView;)V

    return-object p0

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;
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

    const v0, 0x7f0d0160

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->getRoot()Lcom/android/launcher/views/LauncherLoadingView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher/views/LauncherLoadingView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/LauncherFindLocateIconBinding;->rootView:Lcom/android/launcher/views/LauncherLoadingView;

    return-object p0
.end method

.class public final Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchContainerAllApps:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchViewStub:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/view/ViewStub;)V
    .registers 4
    .param p1  # Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->rootView:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    iput-object p2, p0, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->searchContainerAllApps:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    iput-object p3, p0, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->searchViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    const v1, 0x7f0a051e

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_14

    new-instance p0, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;

    invoke-direct {p0, v0, v0, v2}, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;-><init>(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/view/ViewStub;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
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

    const v0, 0x7f0d0212

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->getRoot()Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->rootView:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    return-object p0
.end method

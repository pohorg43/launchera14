.class public final Lcom/android/launcher3/databinding/AllAppsBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final allAppsBgLayer:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final allAppsContent:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final allAppsHeader:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appsView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchContainerAllApps:Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/android/launcher3/allapps/OplusFloatingHeaderView;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;Landroid/view/View;)V
    .registers 8
    .param p1  # Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher3/allapps/OplusFloatingHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->rootView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->allAppsBgLayer:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->allAppsContent:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->allAppsHeader:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->appsView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->searchContainerAllApps:Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;

    iput-object p7, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->vLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/AllAppsBinding;
    .registers 10
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0093

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_42

    const v0, 0x7f0a0095

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_42

    const v0, 0x7f0a0096

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    if-eqz v5, :cond_42

    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const v0, 0x7f0a0511

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-static {v1}, Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;

    move-result-object v7

    const v0, 0x7f0a06ab

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_42

    new-instance p0, Lcom/android/launcher3/databinding/AllAppsBinding;

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/databinding/AllAppsBinding;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/android/launcher3/allapps/OplusFloatingHeaderView;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Lcom/android/launcher3/databinding/SearchContainerAllAppsBinding;Landroid/view/View;)V

    return-object p0

    :cond_42
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/AllAppsBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/AllAppsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/AllAppsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/AllAppsBinding;
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

    const v0, 0x7f0d0036

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/AllAppsBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/AllAppsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/AllAppsBinding;->getRoot()Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/AllAppsBinding;->rootView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    return-object p0
.end method

.class public final Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;
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

.field public final appsView:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final blurBg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final designBottomSheet:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchContainerAllApps:Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/android/launcher3/allapps/OplusFloatingHeaderView;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/view/View;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;Landroid/view/View;)V
    .registers 10
    .param p1  # Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
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
    .param p5  # Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->rootView:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->allAppsBgLayer:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->allAppsContent:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->allAppsHeader:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->appsView:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->blurBg:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->designBottomSheet:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    iput-object p8, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->searchContainerAllApps:Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;

    iput-object p9, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->vLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;
    .registers 12
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0093

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_57

    const v0, 0x7f0a0095

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_57

    const v0, 0x7f0a0096

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    if-eqz v5, :cond_57

    const v0, 0x7f0a00bf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    if-eqz v6, :cond_57

    const v0, 0x7f0a00dd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_57

    move-object v8, p0

    check-cast v8, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    const v0, 0x7f0a0511

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-static {v1}, Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;

    move-result-object v9

    const v0, 0x7f0a06ab

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_57

    new-instance p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;

    move-object v1, p0

    move-object v2, v8

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/android/launcher3/allapps/OplusFloatingHeaderView;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/view/View;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/databinding/TaskbarSearchContainerAllAppsBinding;Landroid/view/View;)V

    return-object p0

    :cond_57
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;
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

    const v0, 0x7f0d01d7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->getRoot()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusTaskbarAllAppsBinding;->rootView:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    return-object p0
.end method

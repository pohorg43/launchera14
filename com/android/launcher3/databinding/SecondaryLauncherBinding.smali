.class public final Lcom/android/launcher3/databinding/SecondaryLauncherBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final allAppsButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final allAppsHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appsView:Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchContainerAllApps:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;
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

.field public final workspaceGrid:Landroid/widget/GridView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/widget/ImageButton;Lcom/android/launcher3/allapps/FloatingHeaderView;Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;Landroid/widget/GridView;)V
    .registers 11
    .param p1  # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/allapps/FloatingHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Landroid/widget/GridView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->rootView:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    iput-object p2, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->allAppsButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->allAppsHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->appsView:Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->dragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    iput-object p6, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->searchContainerAllApps:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    iput-object p7, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->tabPersonal:Landroid/widget/Button;

    iput-object p8, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->tabWork:Landroid/widget/Button;

    iput-object p9, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->tabs:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    iput-object p10, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->workspaceGrid:Landroid/widget/GridView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SecondaryLauncherBinding;
    .registers 14
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0094

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_6b

    const v0, 0x7f0a0096

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v5, :cond_6b

    const v0, 0x7f0a00bf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;

    if-eqz v6, :cond_6b

    move-object v7, p0

    check-cast v7, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    const v0, 0x7f0a0511

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    if-eqz v8, :cond_6b

    const v0, 0x7f0a05d9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_6b

    const v0, 0x7f0a05da

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_6b

    const v0, 0x7f0a05dc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    if-eqz v11, :cond_6b

    const v0, 0x7f0a06ea

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/GridView;

    if-eqz v12, :cond_6b

    new-instance p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/widget/ImageButton;Lcom/android/launcher3/allapps/FloatingHeaderView;Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;Landroid/widget/GridView;)V

    return-object p0

    :cond_6b
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/SecondaryLauncherBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SecondaryLauncherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SecondaryLauncherBinding;
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

    const v0, 0x7f0d0217

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SecondaryLauncherBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->getRoot()Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/SecondaryLauncherBinding;->rootView:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    return-object p0
.end method

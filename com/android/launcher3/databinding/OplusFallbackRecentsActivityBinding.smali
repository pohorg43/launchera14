.class public final Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dockviewPanel:Lcom/android/launcher3/databinding/DockviewPanelBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overviewActionsView:Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overviewPanel:Lcom/android/quickstep/fallback/FallbackRecentsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rapidTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/LauncherRootView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final splitPlaceholder:Lcom/android/quickstep/views/SplitPlaceholderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherRootView;Lcom/android/launcher3/databinding/DockviewPanelBinding;Lcom/android/quickstep/fallback/RecentsDragLayer;Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;Lcom/android/quickstep/fallback/FallbackRecentsView;Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Lcom/android/quickstep/views/SplitPlaceholderView;)V
    .registers 8
    .param p1  # Lcom/android/launcher3/LauncherRootView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/databinding/DockviewPanelBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/quickstep/fallback/RecentsDragLayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/quickstep/fallback/FallbackRecentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/quickstep/views/SplitPlaceholderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->rootView:Lcom/android/launcher3/LauncherRootView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->dockviewPanel:Lcom/android/launcher3/databinding/DockviewPanelBinding;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->dragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->overviewActionsView:Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;

    iput-object p5, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->overviewPanel:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->rapidTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->splitPlaceholder:Lcom/android/quickstep/views/SplitPlaceholderView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;
    .registers 11
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0246

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-static {v1}, Lcom/android/launcher3/databinding/DockviewPanelBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/DockviewPanelBinding;

    move-result-object v4

    const v0, 0x7f0a0255

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/quickstep/fallback/RecentsDragLayer;

    if-eqz v5, :cond_54

    const v0, 0x7f0a0459

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-static {v1}, Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;

    move-result-object v6

    const v0, 0x7f0a045a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz v7, :cond_54

    const v0, 0x7f0a04b7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v8, :cond_54

    const v0, 0x7f0a0598

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/quickstep/views/SplitPlaceholderView;

    if-eqz v9, :cond_54

    new-instance v0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/LauncherRootView;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;-><init>(Lcom/android/launcher3/LauncherRootView;Lcom/android/launcher3/databinding/DockviewPanelBinding;Lcom/android/quickstep/fallback/RecentsDragLayer;Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;Lcom/android/quickstep/fallback/FallbackRecentsView;Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Lcom/android/quickstep/views/SplitPlaceholderView;)V

    return-object v0

    :cond_54
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;
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

    const v0, 0x7f0d01b9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->getRoot()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/LauncherRootView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusFallbackRecentsActivityBinding;->rootView:Lcom/android/launcher3/LauncherRootView;

    return-object p0
.end method

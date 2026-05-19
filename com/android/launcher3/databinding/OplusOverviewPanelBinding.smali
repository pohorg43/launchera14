.class public final Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final overviewActionsView:Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overviewPanel:Lcom/android/quickstep/views/LauncherRecentsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rapidTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/quickstep/views/LauncherRecentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->overviewActionsView:Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->overviewPanel:Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->rapidTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0459

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v1}, Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;

    move-result-object v0

    const v1, 0x7f0a045a

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v2, :cond_29

    const v1, 0x7f0a04b7

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v3, :cond_29

    new-instance v1, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;-><init>(Landroid/view/View;Lcom/android/launcher3/databinding/OverviewActionsContainerBinding;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V

    return-object v1

    :cond_29
    move v0, v1

    :cond_2a
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;
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

    const v0, 0x7f0d01c3

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusOverviewPanelBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

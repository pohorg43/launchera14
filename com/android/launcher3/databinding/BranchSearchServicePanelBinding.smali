.class public final Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final branchPlaceHolder:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchButtonCl:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchCancelButton:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchConfirmButton:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchIconBar:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchNoShow:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchPolicy:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchSummary:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final branchSearchTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11
    .param p1  # Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->rootView:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    iput-object p2, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchPlaceHolder:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchButtonCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchCancelButton:Lcom/coui/appcompat/button/COUIButton;

    iput-object p5, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    iput-object p6, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchIconBar:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchNoShow:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchPolicy:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchSummary:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->branchSearchTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;
    .registers 13
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a010d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_73

    const v0, 0x7f0a010e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_73

    const v0, 0x7f0a010f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v5, :cond_73

    const v0, 0x7f0a0110

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v6, :cond_73

    const v0, 0x7f0a0112

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_73

    const v0, 0x7f0a0114

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_73

    const v0, 0x7f0a0115

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_73

    const v0, 0x7f0a0116

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_73

    const v0, 0x7f0a0118

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_73

    new-instance v0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_73
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;
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

    const v0, 0x7f0d0063

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->getRoot()Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/BranchSearchServicePanelBinding;->rootView:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    return-object p0
.end method

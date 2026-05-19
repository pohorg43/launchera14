.class public final Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final folderAnimatorBackground:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderContent:Lcom/android/launcher3/folder/OplusFolderPagedView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderContentBackground:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderContentRoot:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderFooter:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderName:Lcom/android/launcher3/folder/OplusFolderNameEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderNameClear:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderRecommendSetting:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/folder/OplusFolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final simpleGuidAnimationStub:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/OplusFolder;Landroid/widget/ImageView;Lcom/android/launcher3/folder/OplusFolderPagedView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/Space;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/launcher3/folder/OplusFolderNameEditText;Landroid/widget/ImageView;Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/widget/ImageView;Landroid/view/ViewStub;)V
    .registers 13
    .param p1  # Lcom/android/launcher3/folder/OplusFolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/folder/OplusFolderPagedView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher3/folder/OplusFolderNameEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Lcom/android/launcher/pageindicators/OplusPageIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->rootView:Lcom/android/launcher3/folder/OplusFolder;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderAnimatorBackground:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderContent:Lcom/android/launcher3/folder/OplusFolderPagedView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderContentBackground:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderContentRoot:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderFooter:Landroid/widget/Space;

    iput-object p7, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p8, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderName:Lcom/android/launcher3/folder/OplusFolderNameEditText;

    iput-object p9, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderNameClear:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p11, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->folderRecommendSetting:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->simpleGuidAnimationStub:Landroid/view/ViewStub;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;
    .registers 16
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02b3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_8e

    const v0, 0x7f0a02b4

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/folder/OplusFolderPagedView;

    if-eqz v5, :cond_8e

    const v0, 0x7f0a02b5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_8e

    const v0, 0x7f0a02b6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_8e

    const v0, 0x7f0a02b7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Space;

    if-eqz v8, :cond_8e

    const v0, 0x7f0a02b8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_8e

    const v0, 0x7f0a02bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/folder/OplusFolderNameEditText;

    if-eqz v10, :cond_8e

    const v0, 0x7f0a02bc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_8e

    const v0, 0x7f0a02bd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v12, :cond_8e

    const v0, 0x7f0a02be

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_8e

    const v0, 0x7f0a0567

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewStub;

    if-eqz v14, :cond_8e

    new-instance v0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/folder/OplusFolder;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;-><init>(Lcom/android/launcher3/folder/OplusFolder;Landroid/widget/ImageView;Lcom/android/launcher3/folder/OplusFolderPagedView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/Space;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/launcher3/folder/OplusFolderNameEditText;Landroid/widget/ImageView;Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/widget/ImageView;Landroid/view/ViewStub;)V

    return-object v0

    :cond_8e
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;
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

    const v0, 0x7f0d01dc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->getRoot()Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/folder/OplusFolder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusUserFolderIconNormalizedBinding;->rootView:Lcom/android/launcher3/folder/OplusFolder;

    return-object p0
.end method

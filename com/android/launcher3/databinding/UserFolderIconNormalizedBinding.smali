.class public final Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final folderContent:Lcom/android/launcher3/folder/FolderPagedView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderFooter:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderName:Lcom/android/launcher3/folder/FolderNameEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/folder/Folder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderPagedView;Landroid/widget/LinearLayout;Lcom/android/launcher3/folder/FolderNameEditText;Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .registers 6
    .param p1  # Lcom/android/launcher3/folder/Folder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/folder/FolderPagedView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/launcher3/folder/FolderNameEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/pageindicators/PageIndicatorDots;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->rootView:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->folderContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->folderFooter:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->folderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object p5, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->folderPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;
    .registers 9
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02b4

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v4, :cond_3a

    const v0, 0x7f0a02b7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3a

    const v0, 0x7f0a02bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz v6, :cond_3a

    const v0, 0x7f0a02bd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    if-eqz v7, :cond_3a

    new-instance v0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/folder/Folder;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderPagedView;Landroid/widget/LinearLayout;Lcom/android/launcher3/folder/FolderNameEditText;Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-object v0

    :cond_3a
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;
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

    const v0, 0x7f0d0281

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->getRoot()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/folder/Folder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/UserFolderIconNormalizedBinding;->rootView:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

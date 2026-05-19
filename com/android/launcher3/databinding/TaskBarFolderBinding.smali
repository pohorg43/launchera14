.class public final Lcom/android/launcher3/databinding/TaskBarFolderBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final folderContent:Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderContentBackground:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderFooter:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderName:Lcom/android/launcher3/folder/OplusFolderNameEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/android/launcher3/folder/OplusFolderNameEditText;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 7
    .param p1  # Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/folder/OplusFolderNameEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher/pageindicators/OplusPageIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->rootView:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    iput-object p2, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->folderContent:Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->folderContentBackground:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->folderFooter:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->folderName:Lcom/android/launcher3/folder/OplusFolderNameEditText;

    iput-object p6, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->folderPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/TaskBarFolderBinding;
    .registers 10
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

    check-cast v4, Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;

    if-eqz v4, :cond_46

    const v0, 0x7f0a02b5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_46

    const v0, 0x7f0a02b7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_46

    const v0, 0x7f0a02bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/folder/OplusFolderNameEditText;

    if-eqz v7, :cond_46

    const v0, 0x7f0a02bd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v8, :cond_46

    new-instance v0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/databinding/TaskBarFolderBinding;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;Lcom/android/launcher3/folder/taskbar/TaskBarFolderPageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/android/launcher3/folder/OplusFolderNameEditText;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    return-object v0

    :cond_46
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/TaskBarFolderBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/TaskBarFolderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/TaskBarFolderBinding;
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

    const v0, 0x7f0d0247

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/TaskBarFolderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->getRoot()Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/TaskBarFolderBinding;->rootView:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    return-object p0
.end method

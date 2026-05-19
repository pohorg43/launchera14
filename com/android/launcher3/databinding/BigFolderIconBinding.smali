.class public final Lcom/android/launcher3/databinding/BigFolderIconBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final folderIconIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final folderIconName:Lcom/android/launcher3/OplusBubbleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/folder/big/BigFolderIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/indicator/COUIPageIndicator2;Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 4
    .param p1  # Lcom/android/launcher3/folder/big/BigFolderIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/coui/appcompat/indicator/COUIPageIndicator2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/OplusBubbleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/BigFolderIconBinding;->rootView:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/databinding/BigFolderIconBinding;->folderIconIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iput-object p3, p0, Lcom/android/launcher3/databinding/BigFolderIconBinding;->folderIconName:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/BigFolderIconBinding;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02b9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v1, :cond_1e

    const v0, 0x7f0a02ba

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_1e

    new-instance v0, Lcom/android/launcher3/databinding/BigFolderIconBinding;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/databinding/BigFolderIconBinding;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/indicator/COUIPageIndicator2;Lcom/android/launcher3/OplusBubbleTextView;)V

    return-object v0

    :cond_1e
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/BigFolderIconBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/BigFolderIconBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/BigFolderIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/BigFolderIconBinding;
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

    const v0, 0x7f0d0051

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/BigFolderIconBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/BigFolderIconBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/BigFolderIconBinding;->getRoot()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/BigFolderIconBinding;->rootView:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-object p0
.end method

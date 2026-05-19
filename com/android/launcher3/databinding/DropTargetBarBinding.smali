.class public final Lcom/android/launcher3/databinding/DropTargetBarBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deleteTargetText:Lcom/android/launcher/OplusDeleteDropTarget;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher/OplusDropTargetBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher/OplusDropTargetBar;Lcom/android/launcher/OplusDeleteDropTarget;)V
    .registers 3
    .param p1  # Lcom/android/launcher/OplusDropTargetBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher/OplusDeleteDropTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/DropTargetBarBinding;->rootView:Lcom/android/launcher/OplusDropTargetBar;

    iput-object p2, p0, Lcom/android/launcher3/databinding/DropTargetBarBinding;->deleteTargetText:Lcom/android/launcher/OplusDeleteDropTarget;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/DropTargetBarBinding;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0228

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/OplusDeleteDropTarget;

    if-eqz v1, :cond_13

    new-instance v0, Lcom/android/launcher3/databinding/DropTargetBarBinding;

    check-cast p0, Lcom/android/launcher/OplusDropTargetBar;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/databinding/DropTargetBarBinding;-><init>(Lcom/android/launcher/OplusDropTargetBar;Lcom/android/launcher/OplusDeleteDropTarget;)V

    return-object v0

    :cond_13
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/DropTargetBarBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/DropTargetBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/DropTargetBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/DropTargetBarBinding;
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

    const v0, 0x7f0d011c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/DropTargetBarBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/DropTargetBarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/DropTargetBarBinding;->getRoot()Lcom/android/launcher/OplusDropTargetBar;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher/OplusDropTargetBar;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/DropTargetBarBinding;->rootView:Lcom/android/launcher/OplusDropTargetBar;

    return-object p0
.end method

.class public final Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cleanStorageButton:Lcom/oplus/quickstep/views/OplusCleanStorageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Lcom/oplus/quickstep/views/OplusCleanStorageView;)V
    .registers 3
    .param p1  # Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/quickstep/views/OplusCleanStorageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->rootView:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->cleanStorageButton:Lcom/oplus/quickstep/views/OplusCleanStorageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0194

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/views/OplusCleanStorageView;

    if-eqz v1, :cond_13

    new-instance v0, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;

    check-cast p0, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;-><init>(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Lcom/oplus/quickstep/views/OplusCleanStorageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;
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

    const v0, 0x7f0d01b3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->getRoot()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusCleanStorageButtonBinding;->rootView:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-object p0
.end method

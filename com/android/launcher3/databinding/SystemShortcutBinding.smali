.class public final Lcom/android/launcher3/databinding/SystemShortcutBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bubbleText:Lcom/android/launcher3/BubbleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final divider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1  # Lcom/android/launcher3/shortcuts/DeepShortcutView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/BubbleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/SystemShortcutBinding;->rootView:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/SystemShortcutBinding;->bubbleText:Lcom/android/launcher3/BubbleTextView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/SystemShortcutBinding;->divider:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/databinding/SystemShortcutBinding;->icon:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SystemShortcutBinding;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a014e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_25

    const v0, 0x7f0a023e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    const v0, 0x7f0a0329

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_25

    new-instance v0, Lcom/android/launcher3/databinding/SystemShortcutBinding;

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/databinding/SystemShortcutBinding;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/View;)V

    return-object v0

    :cond_25
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/SystemShortcutBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/SystemShortcutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SystemShortcutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SystemShortcutBinding;
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

    const v0, 0x7f0d023b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/SystemShortcutBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SystemShortcutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/SystemShortcutBinding;->getRoot()Lcom/android/launcher3/shortcuts/DeepShortcutView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/SystemShortcutBinding;->rootView:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    return-object p0
.end method

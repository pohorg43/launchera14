.class public final Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final icon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconText:Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;Landroid/widget/ImageView;Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;Landroid/widget/TextView;)V
    .registers 5
    .param p1  # Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->rootView:Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->iconText:Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->text:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0329

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    const v2, 0x7f0a060c

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1f

    new-instance p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;-><init>(Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;Landroid/widget/ImageView;Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;Landroid/widget/TextView;)V

    return-object p0

    :cond_1f
    move v0, v2

    :cond_20
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;
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

    const v0, 0x7f0d0243

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->getRoot()Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/SystemShortcutIconTextSingleItemBinding;->rootView:Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    return-object p0
.end method

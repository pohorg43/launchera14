.class public final Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appSubtitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toggle:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V
    .registers 7
    .param p1  # Lcom/android/launcher3/widget/picker/WidgetsListHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/widget/picker/WidgetsListHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->rootView:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object p2, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->appIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->appSubtitle:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->appTitle:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->toggle:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->widgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;
    .registers 10
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00b1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3b

    const v0, 0x7f0a00b5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3b

    const v0, 0x7f0a00b6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3b

    const v0, 0x7f0a0632

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_3b

    move-object v8, p0

    check-cast v8, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    new-instance p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    return-object p0

    :cond_3b
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;
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

    const v0, 0x7f0d0298

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->getRoot()Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/WidgetsListRowHeaderBinding;->rootView:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    return-object p0
.end method

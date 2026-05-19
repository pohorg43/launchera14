.class public final Lcom/android/launcher3/databinding/WidgetCellContentBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetBadge:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetDims:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetPreview:Lcom/android/launcher3/widget/WidgetImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetPreviewContainer:Lcom/android/launcher3/widget/WidgetCellPreview;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/launcher3/widget/WidgetImageView;Lcom/android/launcher3/widget/WidgetCellPreview;)V
    .registers 8
    .param p1  # Landroid/view/View;
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
    .param p5  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/widget/WidgetImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/launcher3/widget/WidgetCellPreview;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetBadge:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetDescription:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetDims:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetName:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetPreview:Lcom/android/launcher3/widget/WidgetImageView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->widgetPreviewContainer:Lcom/android/launcher3/widget/WidgetCellPreview;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetCellContentBinding;
    .registers 11
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a06c4

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_50

    const v0, 0x7f0a06c8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_50

    const v0, 0x7f0a06c9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_50

    const v0, 0x7f0a06cc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_50

    const v0, 0x7f0a06cd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/widget/WidgetImageView;

    if-eqz v8, :cond_50

    const v0, 0x7f0a06ce

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/widget/WidgetCellPreview;

    if-eqz v9, :cond_50

    new-instance v0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/databinding/WidgetCellContentBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/launcher3/widget/WidgetImageView;Lcom/android/launcher3/widget/WidgetCellPreview;)V

    return-object v0

    :cond_50
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/launcher3/databinding/WidgetCellContentBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d028d

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetCellContentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/WidgetCellContentBinding;->rootView:Landroid/view/View;

    return-object p0
.end method

.class public final Lcom/android/launcher3/databinding/WidgetCellBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/android/launcher3/widget/OplusWidgetCell;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final widgetCellId:Lcom/android/launcher3/widget/OplusWidgetCell;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/OplusWidgetCell;Lcom/android/launcher3/widget/OplusWidgetCell;)V
    .registers 3
    .param p1  # Lcom/android/launcher3/widget/OplusWidgetCell;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/widget/OplusWidgetCell;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/WidgetCellBinding;->rootView:Lcom/android/launcher3/widget/OplusWidgetCell;

    iput-object p2, p0, Lcom/android/launcher3/databinding/WidgetCellBinding;->widgetCellId:Lcom/android/launcher3/widget/OplusWidgetCell;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetCellBinding;
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string/jumbo v0, "rootView"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/OplusWidgetCell;

    new-instance v0, Lcom/android/launcher3/databinding/WidgetCellBinding;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/databinding/WidgetCellBinding;-><init>(Lcom/android/launcher3/widget/OplusWidgetCell;Lcom/android/launcher3/widget/OplusWidgetCell;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/WidgetCellBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/WidgetCellBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/WidgetCellBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/WidgetCellBinding;
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

    const v0, 0x7f0d028c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/WidgetCellBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/WidgetCellBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/WidgetCellBinding;->getRoot()Lcom/android/launcher3/widget/OplusWidgetCell;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/widget/OplusWidgetCell;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/WidgetCellBinding;->rootView:Lcom/android/launcher3/widget/OplusWidgetCell;

    return-object p0
.end method

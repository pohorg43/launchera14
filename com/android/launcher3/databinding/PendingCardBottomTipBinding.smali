.class public final Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final icon:Lcom/coui/appcompat/imageview/COUIRoundImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pendingCardBottomTip:Lcom/android/launcher3/popup/pendingcard/PendingCardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pendingCardTipArrow:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeToSeeMoreTip:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardView;Lcom/coui/appcompat/imageview/COUIRoundImageView;Lcom/android/launcher3/popup/pendingcard/PendingCardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 6
    .param p1  # Lcom/android/launcher3/popup/pendingcard/PendingCardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/coui/appcompat/imageview/COUIRoundImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/launcher3/popup/pendingcard/PendingCardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->icon:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->pendingCardBottomTip:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    iput-object p4, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->pendingCardTipArrow:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->swipeToSeeMoreTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;
    .registers 9
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0329

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-eqz v4, :cond_2f

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    const v0, 0x7f0a047f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_2f

    const v0, 0x7f0a05cd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_2f

    new-instance p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardView;Lcom/coui/appcompat/imageview/COUIRoundImageView;Lcom/android/launcher3/popup/pendingcard/PendingCardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p0

    :cond_2f
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;
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

    const v0, 0x7f0d01e7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->getRoot()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher3/popup/pendingcard/PendingCardView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/PendingCardBottomTipBinding;->rootView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    return-object p0
.end method

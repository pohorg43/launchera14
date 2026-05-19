.class public final Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ScaleToBigBtn:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ScaleToSmallBtn:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appIcon:Lcom/android/quickstep/views/OplusIconView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final barrier:Landroidx/constraintlayout/widget/Barrier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lockIcon:Lcom/android/quickstep/views/OplusIconView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final menuButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final miniWindowBtn:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final oplusTaskHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final splitWindowBtn:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/quickstep/views/OplusIconView;Landroidx/constraintlayout/widget/Barrier;Lcom/android/quickstep/views/OplusIconView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .registers 12
    .param p1  # Lcom/oplus/quickstep/views/OplusTaskHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/quickstep/views/OplusIconView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroidx/constraintlayout/widget/Barrier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/quickstep/views/OplusIconView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lcom/oplus/quickstep/views/OplusTaskHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->rootView:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    iput-object p2, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->ScaleToBigBtn:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->ScaleToSmallBtn:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->appIcon:Lcom/android/quickstep/views/OplusIconView;

    iput-object p5, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->barrier:Landroidx/constraintlayout/widget/Barrier;

    iput-object p6, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->menuButton:Landroid/widget/ImageButton;

    iput-object p8, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->miniWindowBtn:Landroid/widget/ImageButton;

    iput-object p9, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->oplusTaskHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    iput-object p10, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->splitWindowBtn:Landroid/widget/ImageButton;

    iput-object p11, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;
    .registers 15
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0015

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_77

    const v0, 0x7f0a0016

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_77

    const v0, 0x7f0a00b1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/quickstep/views/OplusIconView;

    if-eqz v6, :cond_77

    const v0, 0x7f0a00d6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_77

    const v0, 0x7f0a03ac

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/quickstep/views/OplusIconView;

    if-eqz v8, :cond_77

    const v0, 0x7f0a03d4

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageButton;

    if-eqz v9, :cond_77

    const v0, 0x7f0a03e2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageButton;

    if-eqz v10, :cond_77

    move-object v11, p0

    check-cast v11, Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    const v0, 0x7f0a0593

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageButton;

    if-eqz v12, :cond_77

    const v0, 0x7f0a0630

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_77

    new-instance p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/quickstep/views/OplusIconView;Landroidx/constraintlayout/widget/Barrier;Lcom/android/quickstep/views/OplusIconView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    return-object p0

    :cond_77
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;
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

    const v0, 0x7f0d01cf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->getRoot()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/OplusTaskHeaderBinding;->rootView:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    return-object p0
.end method

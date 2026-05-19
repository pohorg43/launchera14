.class public final Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final checkboxDrawer:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final checkboxStandard:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerModeLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launcherModeDrawer:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launcherModeGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launcherModeLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launcherModeStandard:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final standardModeImg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final standardModeLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 11
    .param p1  # Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/oplus/anim/EffectiveAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->rootView:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iput-object p2, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->checkboxDrawer:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->checkboxStandard:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->drawerModeLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->launcherModeDrawer:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->launcherModeGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->launcherModeLayout:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->launcherModeStandard:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->standardModeImg:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->standardModeLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;
    .registers 14
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0187

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_76

    const v0, 0x7f0a0189

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v5, :cond_76

    const v0, 0x7f0a0259

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_76

    const v0, 0x7f0a0378

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_76

    const v0, 0x7f0a0379

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v8, :cond_76

    const v0, 0x7f0a037a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_76

    const v0, 0x7f0a037b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f0a05ac

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_76

    const v0, 0x7f0a05ad

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_76

    new-instance v0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;

    move-object v3, p0

    check-cast v3, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-object v0

    :cond_76
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;
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

    const v0, 0x7f0d0163

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->getRoot()Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/LauncherModeIntroductionLayoutBinding;->rootView:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    return-object p0
.end method

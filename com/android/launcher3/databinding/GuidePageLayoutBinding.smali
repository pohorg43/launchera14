.class public final Lcom/android/launcher3/databinding/GuidePageLayoutBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomSheetCv:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final confirmButton:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideContentParent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/coui/appcompat/button/COUIButton;Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/widget/FrameLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 8
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/coui/appcompat/indicator/COUIPageIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->bottomSheetCv:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->confirmButton:Lcom/coui/appcompat/button/COUIButton;

    iput-object p4, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p5, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object p6, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->guideContentParent:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->guideLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuidePageLayoutBinding;
    .registers 11
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00e6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_47

    const v0, 0x7f0a01b9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v5, :cond_47

    const v0, 0x7f0a02fb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v6, :cond_47

    const v0, 0x7f0a02fc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v7, :cond_47

    const v0, 0x7f0a02fd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_47

    move-object v9, p0

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/coui/appcompat/button/COUIButton;Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/widget/FrameLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    return-object p0

    :cond_47
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/GuidePageLayoutBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuidePageLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuidePageLayoutBinding;
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

    const v0, 0x7f0d0141

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuidePageLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePageLayoutBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

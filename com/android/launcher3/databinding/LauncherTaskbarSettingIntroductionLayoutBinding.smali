.class public final Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final taskbarGuideContentContainer:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final taskbarGuideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .registers 4
    .param p1  # Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/coui/appcompat/indicator/COUIPageIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->rootView:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    iput-object p2, p0, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->taskbarGuideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->taskbarGuideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a05fd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1e

    const v0, 0x7f0a05fe

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v2, :cond_1e

    new-instance v0, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;

    check-cast p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;-><init>(Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    return-object v0

    :cond_1e
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;
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

    const v0, 0x7f0d0168

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->getRoot()Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/LauncherTaskbarSettingIntroductionLayoutBinding;->rootView:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    return-object p0
.end method

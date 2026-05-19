.class public abstract Lcom/android/launcher/settings/BaseSettingsFragment;
.super Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequireInsteadOfGet"
    }
.end annotation


# instance fields
.field private mStatusBarResponseUtil:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView$lambda$1(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/settings/BaseSettingsFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView$lambda$0(Lcom/android/launcher/settings/BaseSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateView$lambda$0(Lcom/android/launcher/settings/BaseSettingsFragment;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final onCreateView$lambda$1(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public final initContentIndentation(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isSupportContentIndentation(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_27

    const p0, 0x102003f

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    if-eqz p1, :cond_20

    check-cast p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    if-eqz p0, :cond_27

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    :cond_27
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/settings/BaseSettingsFragment;->initContentIndentation(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/settings/BaseSettingsFragment;->initContentIndentation(Landroid/view/View;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a063f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p2, :cond_1b

    return-object p1

    :cond_1b
    sget-object p3, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Lcom/android/common/util/ThemeUtils$Companion;->getImmersiveTheme(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_36

    const p3, 0x7f0a0240

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f04021d

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextColor(I)V

    const p3, 0x7f080537

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    new-instance p3, Lcom/android/launcher/guide/g;

    invoke-direct {p3, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/launcher/settings/BaseSettingsFragment;)V

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    new-instance p3, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/android/launcher/settings/BaseSettingsFragment;->mStatusBarResponseUtil:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {p0, p2}, Lcom/android/launcher/folder/recommend/c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p0, p3, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

    return-object p1
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object p0, p0, Lcom/android/launcher/settings/BaseSettingsFragment;->mStatusBarResponseUtil:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a()V

    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onResume()V

    iget-object p0, p0, Lcom/android/launcher/settings/BaseSettingsFragment;->mStatusBarResponseUtil:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->b()V

    :cond_d
    return-void
.end method

.class public final Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;
.super Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout$Companion;

.field public static final TAG:Ljava/lang/String; = "LauncherAppsSearchContainerLayout"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->Companion:Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->showBranchSearchMarketTips$lambda$2(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->showBranchSearchGuide$lambda$1(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method private final shouldInterceptTouchEventToStartBranch(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statSearchViewClickCount()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "context.applicationContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needStartBranchSearch(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result p0

    if-nez p0, :cond_2f

    move v0, v1

    :cond_2f
    return v0
.end method

.method private static final showBranchSearchGuide$lambda$1(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$tipsWindow"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    const-string v0, "mActivityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p2, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private static final showBranchSearchMarketTips$lambda$2(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$tipsWindow"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public getSearchAlgorithm()Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getBranchUIController()Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1, p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setMSearchUiManager(Lcom/android/launcher3/allapps/SearchUiManager;)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSearchAlgorithm()Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMBranchResponse(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V

    new-instance v1, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMSearchAlgorithmProxy(Lcom/android/launcher3/search/SearchAlgorithm;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMContext(Landroid/content/Context;)V

    return-object v0

    :cond_2e
    invoke-super {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchAlgorithm()Lcom/android/launcher3/search/SearchAlgorithm;

    move-result-object p0

    const-string/jumbo v0, "super.getSearchAlgorithm()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public inflateSearchViewAnimate()Z
    .registers 4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    const-string v1, "inflateSearchViewAnimate: inDrawerMode: "

    const-string v2, "LauncherAppsSearchContainerLayout"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_16

    invoke-super {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->shouldInterceptTouchEventToStartBranch(Landroid/view/MotionEvent;)Z

    move-result v0

    const-string v1, "context"

    const-string v2, "LauncherAppsSearchContainerLayout"

    const/4 v3, 0x1

    if-eqz v0, :cond_2e

    const-string/jumbo p1, "startBranchSearch"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    const-string v0, "mActivityContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    :cond_2d
    return v3

    :cond_2e
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    if-ne v0, v3, :cond_41

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_97

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_97

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sGlobalSearchMateData:Z

    if-eqz v0, :cond_97

    sget-object p1, Lcom/android/common/multiapp/MultiAppManager;->DEFAULT_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_86

    const-string/jumbo v0, "not add PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    :cond_86
    sget-object p1, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/util/StartActivityCookieHelper;->setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const-string p1, "mContext"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startGlobSearch(Landroid/content/Context;)V

    return v3

    :cond_97
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final resetQueryHint()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_25

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1200d5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_25

    :cond_17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1200d4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final showBranchSearchGuide()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    if-eqz v0, :cond_85

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v1, :cond_9

    goto :goto_85

    :cond_9
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "show_branch_search_guide"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120589

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    const/4 v3, -0x2

    invoke-direct {v2, v0, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const v3, 0x7f0a0117

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0701fc

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2, v0, v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void

    :cond_85
    :goto_85
    const-string p0, "LauncherAppsSearchContainerLayout"

    const-string/jumbo v0, "popup new search tips launcher is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showBranchSearchMarketTips()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    const-string v1, "LauncherAppsSearchContainerLayout"

    if-eqz v0, :cond_cb

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez v2, :cond_10

    goto/16 :goto_cb

    :cond_10
    const-string v2, "mActivityContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getEmptySearchMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_22

    const-string/jumbo p0, "searchMarketIntent is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0060

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const v4, 0x7f0a0113

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "searchMarketIntent.getPackage()"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<*>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    const v2, 0x7f0a00f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_a3
    const v2, 0x7f0a0111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/android/launcher/folder/recommend/j;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/launcher/folder/recommend/j;-><init>(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0707a5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v3, v0, v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void

    :cond_cb
    :goto_cb
    const-string/jumbo p0, "popup empty search tips launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showGlobSearchGuide()V
    .registers 8

    const-string v0, "LauncherAppsSearchContainerLayout"

    const-string v1, "mContext"

    :try_start_4
    sget-object v2, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6d

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shouldShowDialog"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "selectDisagree"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/common/util/LauncherSharedPrefs;->setSelectDisagree(Landroid/content/Context;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callProvider result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shouldShowDialog:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSelectDisagree:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_5c
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startGlobSearch(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_64} :catch_65

    goto :goto_6d

    :catch_65
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

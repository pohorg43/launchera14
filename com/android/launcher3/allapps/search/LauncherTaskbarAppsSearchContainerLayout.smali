.class public Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/OplusSearchUiManager;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Lcom/android/launcher3/allapps/OplusSearchUiManager;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ActivityAppsSearchContainerLayout"


# instance fields
.field public final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private final mFixedTranslationY:F

.field private mHasInflateSearchView:Z

.field private final mMarginTopAdjusting:F

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mPreQuery:Ljava/lang/String;

.field private final mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

.field private mSearchLine:Landroid/view/View;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

.field public mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mFixedTranslationY:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mMarginTopAdjusting:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07012b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->lambda$inflateSearchViewAnimate$1(II)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->lambda$setQuery$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->lambda$inflateSearchViewAnimate$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$inflateSearchViewAnimate$0(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result p1

    if-nez p1, :cond_2d

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isEnableShowKeyboardImmediate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(I)V

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(I)V

    :goto_1c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    sget-object p1, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->SEARCH_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsEventClickAllAppOperate(I)V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$inflateSearchViewAnimate$1(II)V
    .registers 3

    return-void
.end method

.method private synthetic lambda$setQuery$2(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(I)V

    :cond_e
    return-void
.end method

.method private resetSearchView()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    const v3, 0x7f070130

    if-eqz v2, :cond_22

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_58

    :cond_22
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_58

    :cond_36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/config/ScreenInfo;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_58

    :cond_4e
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_58
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    return-void
.end method

.method private updateSearchCancelButton(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    :cond_1f
    new-instance v1, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;-><init>(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f04021c

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private updateSearchLayoutColor()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->updateSearchCancelButton(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->updateSearchView(Landroid/content/Context;)V

    return-void
.end method

.method private updateSearchView(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const v3, 0x7f04021c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method


# virtual methods
.method public clearSearchEditFocus()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_7
    return-void
.end method

.method public clearSearchResult()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    sget-object v1, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    return-void
.end method

.method public exitSearchMode()V
    .registers 1

    return-void
.end method

.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchAlgorithm()Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSearchBarController()Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    return-object p0
.end method

.method public hideKeyboardAndResetSearchView()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->resetSearchBarState()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public inflateSearchViewAnimate()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v0, :cond_39

    const v0, 0x7f0a051e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    new-instance v1, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    new-instance v1, Lcom/android/launcher3/allapps/search/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/search/b;-><init>(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;)V

    iget-object v2, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Ljava/util/List;

    if-nez v2, :cond_34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_34
    iput-object v2, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->updateSearchLayoutColor()V

    const/4 p0, 0x1

    return p0
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchAlgorithm()Lcom/android/launcher3/search/SearchAlgorithm;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    iget-object v6, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    :cond_1b
    return-void
.end method

.method public isSearchEditHasFocus()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onAppsUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-static {p1}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->updateSearchLayoutColor()V

    :cond_12
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mOldConfig:Landroid/content/res/Configuration;

    const-string/jumbo v0, "onFinishInflate: mHasInflateSearchView: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v2, "AllApps"

    const-string v3, "ActivityAppsSearchContainerLayout"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->resetSearchView()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_42

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->focusSearchField()V

    :cond_42
    return-void
.end method

.method public resetSearch()V
    .registers 4

    const-wide/16 v0, 0x8

    const-string v2, "ColorAppsSearchContainerLayout#resetSearch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->reset()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mFixedTranslationY:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mMarginTopAdjusting:F

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_18

    new-instance v2, Lcom/android/launcher/guide/g;

    invoke-direct {v2, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(I)V

    :cond_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_25

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_25
    return-void
.end method

.method public setSearchLine(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchLine:Landroid/view/View;

    return-void
.end method

.method public setSearchViewAnimateAlpha(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setTextSearchEnabled(Z)Landroid/widget/EditText;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public showKeyboard()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isEnableShowKeyboardImmediate()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(I)V

    goto :goto_1c

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(I)V

    :goto_1c
    const-string p0, "ActivityAppsSearchContainerLayout"

    const-string/jumbo v0, "showKeyboard==="

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public updateNeedShowIconSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p1, :cond_c

    const p1, 0x3e4ccccd  # 0.2f

    goto :goto_e

    :cond_c
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method public updateQueryUi()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string/jumbo v0, "updateQueryUi: mHasInflateSearchView: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v2, "AllApps"

    const-string v3, "ActivityAppsSearchContainerLayout"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->getSearchAlgorithm()Lcom/android/launcher3/search/SearchAlgorithm;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mActivityContext:Landroid/content/Context;

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/views/ActivityContext;

    iget-object v7, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    :cond_2f
    return-void
.end method

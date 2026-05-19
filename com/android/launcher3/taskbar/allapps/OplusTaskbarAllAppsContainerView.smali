.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$Companion;

.field private static final PADDING_SEARCH_SHOW:F = 24.0f

.field private static final UPDATE_SCROLLER_COLOR_DELAY:I = 0xc8


# instance fields
.field private mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mUpdateScrollerColorDelay:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMActivityContext$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMScrollHelper$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-object p0
.end method

.method public static final synthetic access$getMSearchContainer$p$s-788395208(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    return-object p0
.end method

.method private static final initColorPopListWindow$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->showPopListWindow(Landroid/view/View;)V

    return-void
.end method

.method private final initColorPopListWindowCreate()V
    .registers 16

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getDrawAppSortRule(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    const/4 v6, 0x1

    if-ge v5, v3, :cond_37

    new-instance v14, Lcom/coui/appcompat/poplist/PopupListItem;

    const/4 v8, 0x0

    aget-object v9, v2, v5

    if-ne v5, v0, :cond_25

    move v10, v6

    goto :goto_26

    :cond_25
    move v10, v4

    :goto_26
    if-ne v5, v0, :cond_2a

    move v11, v6

    goto :goto_2b

    :cond_2a
    move v11, v4

    :goto_2b
    const/4 v13, 0x1

    const/4 v12, -0x1

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_37
    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f(Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/a;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V

    iput-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-void
.end method

.method private static final initColorPopListWindowCreate$lambda$2$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onItemClick view = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "position = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherTaskbarAllAppsContainerView"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->dismissPopupWindow()V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->initColorPopListWindowCreate$lambda$2$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->initColorPopListWindow$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;Landroid/view/View;)V

    return-void
.end method

.method private final showPopListWindow(Landroid/view/View;)V
    .registers 10

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "showPopListWindow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_b

    return-void

    :cond_b
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->initColorPopListWindowCreate()V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getDrawAppSortRule(Landroid/content/Context;)I

    move-result p0

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2e
    if-ge v4, v2, :cond_4d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    const/4 v6, 0x1

    if-ne v4, p0, :cond_3b

    move v7, v6

    goto :goto_3c

    :cond_3b
    move v7, v3

    :goto_3c
    iput-boolean v7, v5, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    if-ne v4, p0, :cond_47

    goto :goto_48

    :cond_47
    move v6, v3

    :goto_48
    iput-boolean v6, v5, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_4d
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    :cond_50
    return-void
.end method


# virtual methods
.method public final dismissPopupWindow()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_d
    return-void
.end method

.method public getAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "*>;"
        }
    .end annotation

    const-string v0, "mAppsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterProviders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const-string v2, "mActivityContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsContext"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;->getLauncherContextIfExist()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v2, "layoutInflater.cloneInCo…LauncherContextIfExist())"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsGridAdapter;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-object v0
.end method

.method public getAppsList(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/allapps/AllAppsStore;",
            "Lcom/android/launcher3/allapps/WorkAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appsStore"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    return-object p0
.end method

.method public getFirstSectionCheckPosition()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initColorPopListWindow()V
    .registers 4

    const v0, 0x7f0a0606

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$1;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Lcom/android/common/util/b1;

    invoke-direct {v1, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0a050d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    new-instance v2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;

    invoke-direct {v2, v0, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$initColorPopListWindow$3;-><init>(Landroid/widget/ImageView;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setOnAnimationListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->initColorPopListWindowCreate()V

    :cond_33
    return-void
.end method

.method public notifyAppSortUpdateListener(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    return-void
.end method

.method public onActivePageChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onActivePageChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_22

    move p1, v2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->updateViewVerticalFadingEdge(Landroid/content/Context;ZZ)V

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->resetWorkModeSwitchLocation()V

    :cond_29
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView$onFinishInflate$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 3

    const-string/jumbo v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->setWindowInsets(Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->reLayoutUpArrow()V

    return-void
.end method

.method public showTabs()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->showTabs()Z

    move-result p0

    return p0
.end method

.method public updatePredictedData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getAlphabeticalAppsList()Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;->isNeedAddAllAppsHeader()Z

    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updatePredictedData(Ljava/util/List;)V

    return-void
.end method

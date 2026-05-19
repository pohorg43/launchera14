.class public Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field public mSelectedContainer:Lcom/android/launcher3/allapps/OplusSelectedContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->mSelectedContainer:Lcom/android/launcher3/allapps/OplusSelectedContainer;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)Lcom/android/launcher3/allapps/OplusSelectedContainer;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->batchTipViewShow()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateSearchViewState()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->handleManagerClick(Landroid/view/View;)V

    return-void
.end method

.method private batchTipViewShow()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/views/CommonAlertView;->animateShow()V

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateEnableUninstallBtn(Z)V

    return-void
.end method

.method private getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->mSelectedContainer:Lcom/android/launcher3/allapps/OplusSelectedContainer;

    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    :cond_1b
    return-object v0
.end method

.method private handleManagerClick(Landroid/view/View;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    if-nez p0, :cond_5

    return-void

    :cond_5
    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->handleManagerClick(Landroid/view/View;)V

    :cond_23
    return-void
.end method

.method private updateSearchViewState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->updateNeedShowIconSelected(Z)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public clearSelectedViews()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->clearSelectData()V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateSearchViewState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0313

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->inSearch()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bb

    :cond_2b
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070de1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v4

    if-eqz v4, :cond_a2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8d

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {v0, v3, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_a2

    :cond_89
    invoke-virtual {v0, v5, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_a2

    :cond_8d
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-nez v4, :cond_9f

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_a2

    :cond_9f
    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_a2
    :goto_a2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/android/common/util/b1;

    invoke-direct {p1, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_bb

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setTextViewRedDot(Landroid/widget/TextView;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public onBindViewHolderByViewTypeNotPredictionIcon(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    :cond_2d
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_38

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_89

    :cond_38
    const/4 p0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_71

    iget-object v4, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v4, :cond_52

    goto :goto_71

    :cond_52
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->isNonInstalledApp()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isNonInstalledApp()Z

    move-result v4

    if-nez v4, :cond_3d

    move-object p0, v3

    :cond_71
    :goto_71
    if-eqz p0, :cond_81

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_89

    :cond_81
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_89

    :cond_86
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeNotPredictionIcon(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V

    :goto_89
    return-void
.end method

.method public replacePredictionIcon(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    move v2, v0

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    goto/16 :goto_a2

    :cond_24
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-ne v3, v1, :cond_a2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a2

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_57

    goto :goto_a1

    :cond_57
    move v6, v0

    :goto_58
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a2

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-eqz v7, :cond_9e

    iget-object v8, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v8, :cond_9e

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_71

    goto :goto_9e

    :cond_71
    iget-object v8, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    iget-object v8, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    iget v8, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-eq v8, v4, :cond_9e

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    :cond_a1
    :goto_a1
    return-void

    :cond_a2
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_a6
    return-void
.end method

.method public setSelectedContainer(Lcom/android/launcher3/allapps/OplusSelectedContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->mSelectedContainer:Lcom/android/launcher3/allapps/OplusSelectedContainer;

    return-void
.end method

.method public showSelectedViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppsGridAdapter"

    if-nez p1, :cond_b

    const-string/jumbo p0, "showSelectedViews , selectedList : null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const-string/jumbo v1, "showSelectedViews , size: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string p0, "Launcher state is not all apps"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/launcher/views/CommonAlertView;->createPanel(Landroid/content/Context;I)Lcom/android/launcher/views/CommonAlertView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/AllAppsBatchTipView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    new-instance v1, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;-><init>(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/AllAppsBatchTipView;->showTipsView(Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->batchTipViewShow()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateSearchViewState()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_78
    return-void
.end method

.method public updateEnableUninstallBtn(Z)V
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v1

    :cond_f
    const-string v0, "AppsGridAdapter"

    if-eqz p1, :cond_21

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    if-nez v2, :cond_21

    const-string/jumbo p1, "updateEnableUninstallBtn , mBatchTipButtonDialog : null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->showSelectedViews(Ljava/util/List;)V

    return-void

    :cond_21
    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    invoke-virtual {p1}, Lcom/android/launcher/views/CommonAlertView;->isViewShow()Z

    move-result p1

    if-nez p1, :cond_36

    const-string/jumbo p1, "updateEnableUninstallBtn , mBatchTipButtonDialog : close"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    invoke-virtual {p1}, Lcom/android/launcher/views/CommonAlertView;->animateShow()V

    :cond_36
    const/4 p1, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move p1, v3

    :cond_51
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

    if-eqz p0, :cond_5d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/views/AllAppsBatchTipView;->showEnableContainer(ZZ)V

    :cond_5d
    return-void
.end method

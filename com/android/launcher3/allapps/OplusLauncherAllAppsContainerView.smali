.class public Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/OplusSelectedContainer;


# instance fields
.field private mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private mFirstVisibleItemPosition:I

.field private mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

.field private mIsClickItemDismiss:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field private final mSelectedViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mIsClickItemDismiss:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    iput p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mFirstVisibleItemPosition:I

    new-instance p1, Lcom/android/launcher/togglebar/c;

    invoke-direct {p1, p0}, Lcom/android/launcher/togglebar/c;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mFirstVisibleItemPosition:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mFirstVisibleItemPosition:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createDrawSortOptionDialog()V
    .registers 12

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v0, "sort. clickable false."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getDrawAppSortRule(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    new-array v8, v1, [Z

    fill-array-data v8, :array_6c

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    new-instance v0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0d00e7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZ)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f13016d

    invoke-direct {v1, v3, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f12023b

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance v3, Lcom/android/launcher3/allapps/o;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/o;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance v2, Lcom/android/launcher/folder/recommend/i;

    invoke-direct {v2, p0}, Lcom/android/launcher/folder/recommend/i;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v0, 0x7f12021e

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void

    nop

    :array_6c
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private drawManagerChooseClick()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    if-eqz v0, :cond_19

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_6e

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    return-void

    :cond_37
    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    if-nez v0, :cond_47

    const-string p0, "LauncherTaskbarAllAppsContainerView"

    const-string v0, "AppChoose. clickable false."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->replacePredictionIcon(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->showSelectedViews(Ljava/util/List;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private initColorPopListWindowCreate()V
    .registers 6

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    const-string v0, "AppFeatureUtils.INSTANCE.isAppRankDisabled()： "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f120241

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f120240

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f120155

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v1, Lcom/android/launcher3/allapps/p;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/p;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    iput-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v1, Lcom/android/launcher/guide/j;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private synthetic lambda$createDrawSortOptionDialog$3(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statsClickDrawerAppSort(I)V

    return-void
.end method

.method private synthetic lambda$createDrawSortOptionDialog$4(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statsClickDrawerAppSort(I)V

    return-void
.end method

.method private synthetic lambda$initColorPopListWindowCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/statistics/LauncherStatistics;->statsEventClickManagePopupsAllApp(I)V

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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mIsClickItemDismiss:Z

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    if-nez p3, :cond_49

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result p2

    if-nez p2, :cond_49

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->createDrawSortOptionDialog()V

    goto :goto_63

    :cond_49
    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    if-ne p3, p2, :cond_60

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V

    goto :goto_63

    :cond_60
    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->drawManagerChooseClick()V

    :goto_63
    return-void
.end method

.method private synthetic lambda$initColorPopListWindowCreate$2()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mIsClickItemDismiss:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    sget-object v1, Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;->MANAGE_BLANK:Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsEventClickManagePopupsAllApp(I)V

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mIsClickItemDismiss:Z

    return-void
.end method

.method private synthetic lambda$new$5(Z)V
    .registers 2

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mDrawSortAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->resetSearchIfNessary()V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$new$5(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$createDrawSortOptionDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$createDrawSortOptionDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private resetAllAppsDividerItemView()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getAllAppsDividerItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604ff

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3d
    return-void
.end method

.method private resetSearchIfNessary()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "resetSearch query:"

    const-string v2, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    :cond_1c
    return-void
.end method

.method private resetSelectState()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->clearSelectedViews()V

    :cond_2f
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher/views/AllAppsBatchTipView;->checkAndRemoveAllAppsBatchTipView(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$initColorPopListWindowCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->lambda$initColorPopListWindowCreate$2()V

    return-void
.end method


# virtual methods
.method public clearSelectData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->dispatchSlideMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-object v0
.end method

.method public getAppsList(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    return-object p0
.end method

.method public getSelectedViewList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    return-object p0
.end method

.method public handleManagerClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string v1, "handleManagerClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->initColorPopListWindowCreate()V

    :cond_14
    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshListDot(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f(Ljava/util/List;)V

    :cond_37
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    sget-object v1, Lcom/android/statistics/LauncherStatistics$DrawerOperate;->MANAGE_BTN:Lcom/android/statistics/LauncherStatistics$DrawerOperate;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsEventClickAllAppOperate(I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    :cond_4d
    return-void
.end method

.method public initColorPopListWindow()V
    .registers 2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->initColorPopListWindowCreate()V

    :cond_7
    return-void
.end method

.method public notifyAppSortUpdateListener(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mOldAppSortRule:I

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->resetSearchIfNessary()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->registerAsyncTraceListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->unregisterAsyncTraceListener()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BranchManager.featureSupport() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    :cond_55
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/c1;

    invoke-direct {v1, p0}, Lcom/android/common/util/c1;-><init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->setOnExploreBranchClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrollUpEnd()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(I)V

    :cond_d
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->enterDrawer()V

    goto :goto_24

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->showKeyboardInDrawerPage()V

    :goto_24
    return-void
.end method

.method public onScrollUpStart()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    if-eqz v1, :cond_37

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    :goto_3b
    int-to-float v2, v2

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    goto :goto_53

    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_53
    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_77

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_77

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_77

    cmpg-float p0, p1, p0

    if-lez p0, :cond_75

    goto :goto_77

    :cond_75
    const/4 p0, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 p0, 0x1

    :goto_78
    return p0

    :cond_79
    return v0
.end method

.method public refreshBackgroundColor()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshBackgroundColor cur = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v2, :cond_44

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v0, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p0, v0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->setSearchViewAnimateAlpha(F)V

    :cond_44
    return-void
.end method

.method public reset(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->reset(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->resetAllAppsDividerItemView()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->resetSelectState()V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->exitDrawer()V

    :cond_14
    return-void
.end method

.method public selectView(Landroid/view/View;)V
    .registers 7

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    if-nez p1, :cond_b

    const-string/jumbo p0, "selectView, view is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    const-string/jumbo p0, "selectView, tag is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_7c

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_31
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_62

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    const v1, 0x7f120534

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6a

    :cond_62
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz p1, :cond_7b

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateEnableUninstallBtn(Z)V

    :cond_7b
    return-void

    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "select view not a shortcut, tag = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->setWindowInsets(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    goto/16 :goto_100

    :cond_46
    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_100

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string/jumbo v0, "setWindowInsets-getCurrentStableState:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-getState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-mAppsView.isShown():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTaskbarAllAppsContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_e7

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_e7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    goto :goto_100

    :cond_e7
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    :cond_100
    :goto_100
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->reLayoutUpArrow()V

    return-void
.end method

.method public showKeyboardInDrawerPage()V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    const-string v1, "LauncherTaskbarAllAppsContainerView"

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    if-ne v2, v3, :cond_3c

    const-string p0, "lastState:Background,mCurrentStableState:Overview, mState:AllApps, mRestState:AllApps,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    if-ne v2, v3, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-ne v0, v3, :cond_60

    const-string p0, "lastState:Normal, mCurrentStableState:AllApps, mState:AllApps, mRestState:AllApps,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_60
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-nez v0, :cond_74

    const-string p0, "mActivityContext isStarted false, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_74
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportShowInputInDrawer:Z

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    if-eqz v0, :cond_9b

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "show_inputmethod_in_drawer_switch"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_94

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->needKeyboardFromNotification()Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_94
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->showKeyboard()V

    :cond_9b
    return-void
.end method

.method public updateAllAppsParamsWhenIdpChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object p0

    :goto_10
    instance-of v0, p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    if-eqz v0, :cond_19

    check-cast p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;->updateWidth()V

    :cond_19
    return-void
.end method

.method public updateGlobalColor()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updateGlobalColor()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_26

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604ff

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_26
    return-void
.end method

.method public updatePaddingsIfNeeded(Lcom/android/launcher3/DeviceProfile;)V
    .registers 5

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    if-eq v0, v1, :cond_3e

    const-string v0, "LauncherTaskbarAllAppsContainerView"

    const-string/jumbo v1, "need to update all apps paddings"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :cond_3e
    return-void
.end method

.method public updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LauncherTaskbarAllAppsContainerView"

    if-nez v0, :cond_8f

    if-eqz p2, :cond_8f

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_8f

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_4d
    const-string/jumbo p1, "updateSelectedViewList , deleteViews size: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mSelectedViewList size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_77

    return-void

    :cond_77
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz p1, :cond_8e

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->updateEnableUninstallBtn(Z)V

    :cond_8e
    return-void

    :cond_8f
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedViewList , packageName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , userHandle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , mSelectedViewList : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

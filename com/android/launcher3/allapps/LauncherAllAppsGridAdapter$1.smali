.class Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->showSelectedViews(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->lambda$onAddButtonClick$0(Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$onAddButtonClick$0(Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    iget-object p3, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object p3, p3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p3, Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    const/4 p3, 0x0

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBatchAddAppToWorkspace()V

    return-void
.end method


# virtual methods
.method public onAddButtonClick(Lcom/android/launcher/views/CommonAlertView;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->access$000(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_64

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v1

    aput v5, v3, v4

    new-instance v4, Lcom/android/launcher3/allapps/l;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/launcher3/allapps/l;-><init>(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;Lcom/android/launcher3/OplusWorkspace;[I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/launcher3/LauncherModel;->batchAndBindAddedWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher/views/CommonAlertView;->animateClose(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->clearSelectedViews()V

    :cond_64
    :goto_64
    return-void
.end method

.method public onCloseButtonDialogCallBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->clearSelectedViews()V

    :cond_d
    return-void
.end method

.method public onUninstallButtonClick(Lcom/android/launcher/views/CommonAlertView;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;->access$000(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;)Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_a1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_a1

    :cond_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5f

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v7, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v7, v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v7, v8, v9}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_59
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_5f
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_7d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7d

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->showAppEncryptedHintDialog()V

    return-void

    :cond_7d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_84

    return-void

    :cond_84
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8c

    const/4 v0, 0x1

    goto :goto_8d

    :cond_8c
    move v0, v4

    :goto_8d
    new-instance v3, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v5, p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1$1;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1$1;-><init>(Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter$1;Z)V

    invoke-virtual {v3, v2, v1, v5}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    invoke-virtual {p1, v4}, Lcom/android/launcher/views/CommonAlertView;->animateClose(Z)V

    :cond_a1
    :goto_a1
    return-void
.end method

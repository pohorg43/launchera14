.class public final Lcom/android/common/util/AppFeatureUtils$contentObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/AppFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string p0, "AppFeatureUtils"

    const-string p1, "appFeature changed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->access$cacheFeatureList()V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "oplus_operator_launcher_sim_operator_featrue"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(contentResolve…ATOR_SIM_LOAD_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setSimCarrierName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.extra_workspace_path"

    invoke-static {p1, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(contentResolve…EXTRA_WORKSPACE_PATH, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setExtraWorkspacePathFromFeature(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.filter_packages_for_extra"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "getStringList(contentRes…ILTER_PACKAGES_FOR_EXTRA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setFilterPackagesForExtraList(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.place_packages_in_empty_grid"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "getStringList(contentRes…E_PACKAGES_IN_EMPTY_GRID)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setPlacePackagesInEmptyGrid(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.place_packages_in_folder"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "getStringList(contentRes…PLACE_PACKAGES_IN_FOLDER)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setPlacePackagesInExistingFolder(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.OVERLAY_GOOGLE_DISCOVER"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setSupportGoogleOverlay(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.TMOBILE_CUSTOM"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_91

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.PREFER_SECOND_SCREEN"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8f

    goto :goto_91

    :cond_8f
    const/4 p1, 0x0

    goto :goto_92

    :cond_91
    :goto_91
    const/4 p1, 0x1

    :goto_92
    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setPreferSecondScreen(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.layout.reset_by_oobe"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setResetByOobe(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.LOAD_POSITION_ITEMS_ONLY"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setLoadPositionItemsOnly(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.layout.disable_pom_app"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setDisablePomAPP(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.need_duplicated_shortcut"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "getStringList(contentRes…NEED_DUPLICATED_SHORTCUT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setNeedDuplicatedShortcut(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.grid_layout_x_y"

    invoke-static {p1, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(contentResolve…TURE_GRID_LAYOUT_X_Y, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setGridLayoutXY(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.default_workspace_path"

    invoke-static {p1, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(contentResolve…ULT_WORKSPACE_BY_SIM, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setDefaultWorkspaceBySim(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.CUSTOMIZE_DRAWER_MODE"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setCustomizeDrawerMode(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.DEFAULT_SIMPLE_MODE"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setDefaultSimpleMode(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.default_workspace_path_before"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setDefaultBySimBefore(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.RECENT_TASK_DISABLE"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setCustomizeRecentTaskDisabled(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.search_entry_disable"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setSearchEntryDisable(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.search_entry_default_turn_off"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setSearchEntryDefaultTurnOff(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.APP_NAME_SHOW_IN_TWO_LINES"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setAppNameShowInTwoLines(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.not_detect_lost_apps"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setNotDetectLostApps(Z)V

    invoke-static {p0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.android.launcher.DEFAULT_ADD_TO_WORKSPACE_OFF_COTA_NONREBOOT"

    invoke-static {p1, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils;->setDefaultAddToWorkspaceOffCotaNonReboot(Z)V

    return-void
.end method

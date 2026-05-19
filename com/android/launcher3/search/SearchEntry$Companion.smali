.class public final Lcom/android/launcher3/search/SearchEntry$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/SearchEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSearchAppLaunchIntent(Lcom/android/launcher3/search/SearchEntry$Companion;)Landroid/content/Intent;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final getSearchAppLaunchIntent()Landroid/content/Intent;
    .registers 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "source"

    const-string v1, "launcher_search_entry"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final getSearchAppAction()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_7

    const-string p0, "com.oppo.quicksearchbox.action.Dispatch"

    goto :goto_9

    :cond_7
    const-string p0, "android.search.action.DOCK_SEARCH"

    :goto_9
    return-object p0
.end method

.method public final getSearchAppPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_c

    const p0, 0x7f120481

    invoke-static {p0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_c
    const p0, 0x7f12047b

    invoke-static {p0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public final getSwitchDefaultValue()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSearchEntryDefaultTurnOff()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_search_entry_enable"

    invoke-static {p1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSearchEntrySupported()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result p0

    return p0
.end method

.method public final isSwitchEnable(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSwitchDefaultValue()Z

    move-result p0

    const-string v0, "is_search_entry_enable"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_search_entry_enable"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p3, :cond_f

    invoke-virtual {p3, p2}, Lcom/android/launcher3/search/SearchEntry;->setSwitchEnableState(Z)V

    :cond_f
    return-void
.end method

.method public final updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->sExportGlobalSearchMateData:Z

    if-eqz v1, :cond_74

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry$Companion;->isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_74

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSearchEntryDefaultTurnOff()Z

    move-result v1

    if-nez v1, :cond_74

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    invoke-virtual {v1, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    const-string v3, "DockSwitch"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_30

    :cond_2f
    move-object v1, v2

    :goto_30
    if-eqz v1, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dockSwitchDefaultValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchEntry"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_50

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    :goto_51
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v2

    :cond_71
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/launcher3/search/SearchEntry$Companion;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    :cond_74
    return-void
.end method

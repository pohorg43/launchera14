.class public Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;
.super Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.source ""


# static fields
.field private static final LOCAL_FILE_NAME:Ljava/lang/String; = "default_app_forbidden_uninstall_list"

.field private static final RUS_ROM_NAME:Ljava/lang/String; = "apps_launcher_cannot_uninstall_pkgs"

.field private static final STRING_ARRAY_NAME_LOCAL_FORBIDDEN_UNINSTALL_PKG:Ljava/lang/String; = "local_forbidden_uninstall_pkg"

.field private static final STRING_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG:Ljava/lang/String; = "ForbiddenUninstallAppManager"

.field private static volatile sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;


# instance fields
.field private final mForbiddenUninstallAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    invoke-direct {v1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;-><init>()V

    sput-object v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    return-object v0
.end method

.method private loadCustomForbiddenUninstallApps(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIndonesiaVersion()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_32
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->getShortcutHiddenPackages()Ljava/util/List;

    move-result-object p1

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_41
    return-void
.end method

.method private loadUninstallableAppConfig()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/PackageUtils;->getHideUninstallButtonList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    return-void
.end method


# virtual methods
.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "default_app_forbidden_uninstall_list"

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "apps_launcher_cannot_uninstall_pkgs"

    return-object p0
.end method

.method public isInAppForbidDeleteList(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_36

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeDisAllowUninstall(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "ForbiddenUninstallAppManager"

    if-eqz p0, :cond_2a

    const-string p0, "company customize dis allow uninstall panckage = "

    invoke-static {p0, p1, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2a
    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeAppUninstallByWhiteList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "company customize set app uninstall policy package = "

    invoke-static {p0, p1, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    :goto_36
    return v0
.end method

.method public loadAndParserRusConfigData(Landroid/content/Context;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadUninstallableAppConfig()V

    invoke-direct {p0, p1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadCustomForbiddenUninstallApps(Landroid/content/Context;)V

    return v0
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateConfigData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/PackageUtils;->getHideUninstallButtonList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1f

    const-string p0, "ForbiddenUninstallAppManager"

    const-string p1, "13.1 domestic new project unnecessaryParseList parse mForbiddenUninstallAppList"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/rusconfig/RusBaseConfigManager;->updateConfigData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "ForbiddenUninstallAppManager"

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_forbidden_uninstall_pkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_47
    iget-object v0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_2f

    :catch_51
    move-exception p2

    const-string/jumbo v0, "updateCustomConfigData component info e:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2f

    :cond_5d
    const-string/jumbo p1, "updateCustomConfigData forbiddenUninstallAppList:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;)V

    return-void
.end method

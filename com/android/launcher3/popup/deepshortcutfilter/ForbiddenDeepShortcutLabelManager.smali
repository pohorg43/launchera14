.class public Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;
.super Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.source ""


# static fields
.field private static final LOCAL_FILE_NAME:Ljava/lang/String; = "launcher_list_for_forbidden_deep_shortcut_label_local"

.field private static final RUS_ROM_NAME:Ljava/lang/String; = "launcher_list_for_forbidden_deep_shortcut"

.field private static final STRING_ARRAY_NAME_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field private static final STRING_TAG_COMPONENT_INFO:Ljava/lang/String; = "ComponentInfo"

.field private static final TAG:Ljava/lang/String; = "ForbiddenDeepShortcutLabelManager"

.field private static volatile sInstance:Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;


# instance fields
.field private mForbiddenLabel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mForbiddenList:Ljava/util/List;
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

    iput-object v0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->sInstance:Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->sInstance:Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    invoke-direct {v1}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->sInstance:Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

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
    sget-object v0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->sInstance:Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    return-object v0
.end method


# virtual methods
.method public filterShortcuts(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->isShortcutShouldForbidByLabel(Landroid/content/pm/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_19
    return-object p1
.end method

.method public getForbiddenList()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    return-object p0
.end method

.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "launcher_list_for_forbidden_deep_shortcut_label_local"

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "launcher_list_for_forbidden_deep_shortcut"

    return-object p0
.end method

.method public isForbiddenLabel(Landroid/content/pm/ShortcutInfo;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenLabel:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_33

    :cond_c
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_33

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenLabel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_33
    :goto_33
    return v1
.end method

.method public isInForbiddenComponentList(Landroid/content/ComponentName;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    if-nez p1, :cond_c

    goto :goto_30

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method public isShortcutShouldForbidByLabel(Landroid/content/pm/ShortcutInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_82

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenLabel:Ljava/util/List;

    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_82

    :cond_2e
    iget-object v1, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v2, v4

    goto :goto_35

    :cond_58
    iget-object p0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenLabel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :cond_5f
    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    move v1, v4

    goto :goto_5f

    :cond_7d
    if-eqz v1, :cond_82

    if-eqz v2, :cond_82

    move v0, v4

    :cond_82
    :goto_82
    return v0
.end method

.method public loadAndParserRusConfigData(Landroid/content/Context;)Z
    .registers 4

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenLabel:Ljava/util/List;

    :cond_13
    invoke-super {p0, p1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
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

    iget-object p1, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "ForbiddenDeepShortcutLabelManager"

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "component_name"

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

    const-string v1, "ComponentInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_47
    iget-object v0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

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
    const-string/jumbo p1, "updateCustomConfigData forbiddenList:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->mForbiddenList:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;)V

    return-void
.end method

.class public final Lcom/android/launcher3/model/ShortcutsAllRefreshTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/ShortcutsAllRefreshTask$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortcutsAllRefreshTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutsAllRefreshTask.kt\ncom/android/launcher3/model/ShortcutsAllRefreshTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n766#2:92\n857#2,2:93\n1194#2,2:95\n1222#2,4:97\n*S KotlinDebug\n*F\n+ 1 ShortcutsAllRefreshTask.kt\ncom/android/launcher3/model/ShortcutsAllRefreshTask\n*L\n35#1:92\n35#1:93,2\n35#1:95,2\n35#1:97,4\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/model/ShortcutsAllRefreshTask$Companion;

.field private static final TAG:Ljava/lang/String; = "ShortcutsAllRefreshTask"


# instance fields
.field private final user:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/ShortcutsAllRefreshTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->Companion:Lcom/android/launcher3/model/ShortcutsAllRefreshTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;)V
    .registers 3

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    return-void
.end method

.method private static final execute$lambda$4$lambda$3(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const-string v0, "$matchingWorkspaceItems"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method private static final execute$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->execute$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->execute$lambda$4$lambda$3(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 15

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p3, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->shortcutsLoaded(Z)V

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    const-string/jumbo v3, "{\n            shortcutMa…}\n            }\n        }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_46

    :cond_44
    sget-object v2, Li4/y;->a:Li4/y;

    :goto_46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_66
    const/16 v4, 0xa

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Li4/j0;->b(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_75

    move v4, v5

    :cond_75
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-static {v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_93
    const-string v3, "ShortcutsAllRefreshTask"

    const-string/jumbo v4, "shortcuts refresh -- pinnedShortcutMaps size="

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isUserUnlocked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_c2
    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    new-instance v6, Lcom/android/common/util/a0;

    invoke-direct {v6, v3, v1}, Lcom/android/common/util/a0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p2, v4, v6}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_172

    monitor-exit p2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_137

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_12d

    invoke-static {v7}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    if-nez v9, :cond_10d

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "app.context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "key"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "shortcutManager"

    invoke-static {p3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7, v8, p3}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->pinLegacyDeepShortcutIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/shortcuts/DeepShortcutManager;)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    :cond_10d
    if-nez v9, :cond_118

    const-string v7, "key"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_db

    :cond_118
    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v8, v8, -0x21

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    goto :goto_133

    :cond_12d
    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :goto_133
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    :cond_137
    invoke-virtual {p0, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_14b

    invoke-static {v6}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object p1

    const-string/jumbo v1, "removed because the shortcut is no longer available in shortcut service"

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_14b
    if-nez v0, :cond_14e

    return-void

    :cond_14e
    invoke-virtual {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result p1

    if-eqz p1, :cond_171

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p3, Lcom/android/launcher3/model/ShortcutsAllRefreshTask$execute$2;

    invoke-direct {p3, p0}, Lcom/android/launcher3/model/ShortcutsAllRefreshTask$execute$2;-><init>(Lcom/android/launcher3/model/ShortcutsAllRefreshTask;)V

    new-instance v0, Lcom/android/launcher/folder/download/model/c;

    const/4 v1, 0x7

    invoke-direct {v0, p3, v1}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3, v2}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_171
    return-void

    :catchall_172
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->user:Landroid/os/UserHandle;

    return-object p0
.end method

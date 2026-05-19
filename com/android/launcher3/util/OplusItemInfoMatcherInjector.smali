.class public Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "OplusItemInfoMatcherInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Landroid/os/UserHandle;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->lambda$injectOfPackages$0(Ljava/util/Set;Landroid/os/UserHandle;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static comparePSVersion([Ljava/lang/String;[ILjava/util/Set;Landroid/os/UserHandle;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const-string/jumbo v3, "pkgNames[0]:"

    const-string/jumbo v4, "user.getIdentifier():"

    const-string v5, ",user"

    const-string v6, ",pkgNames[0]:"

    const-string v7, ",users[1]:"

    const-string v8, ",users[0]:"

    const-string v9, "isPSVersion-- pkgNames.length"

    const-string v10, ",pkgNames[1]:"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v2, v11, :cond_a9

    array-length v2, v1

    if-ne v2, v11, :cond_a9

    sget-object v2, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v12

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v13

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v12

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v13

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_177

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v12

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aget v6, v1, v12

    if-eq v5, v6, :cond_93

    :cond_83
    aget-object v5, v0, v13

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aget v6, v1, v13

    if-ne v5, v6, :cond_67

    :cond_93
    sget-object v1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string v2, "mIsMatch = true packageName:"

    invoke-static {v2, v4, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v13

    invoke-static {v2, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_a9
    array-length v2, v0

    const/4 v14, 0x3

    if-ne v2, v14, :cond_16f

    array-length v2, v1

    if-ne v2, v14, :cond_16f

    sget-object v2, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v14, v0

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v12

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v13

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",users[2]:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v11

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v12

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v13

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",pkgNames[2]:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v11

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_177

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v12

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "isPSVersion-- mIsMatch = true packageName:"

    if-eqz v5, :cond_137

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aget v8, v1, v12

    if-ne v5, v8, :cond_137

    sget-object v1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    invoke-static {v7, v4, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v12

    invoke-static {v2, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_137
    aget-object v5, v0, v13

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aget v8, v1, v13

    if-ne v5, v8, :cond_153

    sget-object v1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    invoke-static {v7, v4, v10}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v13

    invoke-static {v2, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_153
    aget-object v5, v0, v11

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aget v8, v1, v11

    if-ne v5, v8, :cond_10d

    sget-object v1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    invoke-static {v7, v4, v6}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v11

    invoke-static {v2, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_16f
    sget-object v0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no option here!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_177
    return v12
.end method

.method public static compareSplitCVersion(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/Set;Landroid/os/UserHandle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v2, "userId1"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string/jumbo v2, "userId2"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    move v1, v0

    goto :goto_33

    :cond_32
    move p1, v1

    :goto_33
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_c3

    aget-object v2, v0, v4

    const/4 v3, 0x1

    aget-object v5, v0, v3

    if-eqz v2, :cond_ba

    if-nez v5, :cond_48

    goto :goto_ba

    :cond_48
    sget-object p0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string v6, "isSplitC-- packageNameArray.length"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v0, v0

    const-string v7, ",userId1:"

    const-string v8, ",userId2:"

    invoke-static {v6, v0, v7, v1, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ",pkgName1:"

    const-string v7, ",pkgName2:"

    invoke-static {v6, p1, v0, v2, v7}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",user"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "user.getIdentifier():"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, v1, :cond_aa

    :cond_9e
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_86

    :cond_aa
    sget-object p0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string p1, "isSplitC-- mIsMatch = true packageName:"

    const-string/jumbo p3, "pkgName1:"

    invoke-static {p1, p2, p3, v2, v7}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v5, p0}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b9
    return v4

    :cond_ba
    :goto_ba
    sget-object p1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "pkg is invalid:(pkgName1 == null) || (pkgName2 == null)"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_c3
    sget-object p1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "pkg is invalid:"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static compareWhenCombinationType(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/Set;Landroid/os/UserHandle;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ef

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkgName1"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "pkgName2"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "pkgNames"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userIds"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "] = "

    const/4 v6, 0x0

    if-eqz v3, :cond_7b

    :try_start_35
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move v8, v1

    :goto_41
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7c

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    sget-object v9, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "string ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_70} :catch_73

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :catch_73
    sget-object v3, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "string Parser ERROR!!!"

    invoke-static {v3, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    move-object v3, v6

    :cond_7c
    if-eqz v4, :cond_c8

    :try_start_7e
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    move v8, v1

    :goto_8a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_be

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v8

    sget-object v9, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stringUsers ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v4, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_bb} :catch_c0

    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    :cond_be
    move-object v6, v4

    goto :goto_c8

    :catch_c0
    sget-object v4, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stringUsers Parser ERROR!!!"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    const-string v4, "isSplitScreenCombination"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "isPsSplitScreenCombination"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v4, :cond_e4

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e4

    invoke-static {v2, p0, p1, p2}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->compareSplitCVersion(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/Set;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_e4
    if-eqz v0, :cond_ef

    if-eqz v3, :cond_ef

    if-eqz v6, :cond_ef

    invoke-static {v3, v6, p1, p2}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->comparePSVersion([Ljava/lang/String;[ILjava/util/Set;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_ef
    return v1
.end method

.method public static injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/e;-><init>(Ljava/util/Set;Landroid/os/UserHandle;Z)V

    return-object v0
.end method

.method private static synthetic lambda$injectOfPackages$0(Ljava/util/Set;Landroid/os/UserHandle;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    instance-of v2, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_1c

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v2}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v2, p0, p1}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->compareWhenCombinationType(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/Set;Landroid/os/UserHandle;)Z

    move-result p0

    goto :goto_44

    :cond_1c
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    iget-object p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    move p0, v2

    goto :goto_2e

    :cond_2d
    move p0, v0

    :goto_2e
    if-eqz p2, :cond_44

    if-eqz p0, :cond_43

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p0

    iget p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result p0

    if-nez p0, :cond_43

    move v0, v2

    :cond_43
    move p0, v0

    :cond_44
    :goto_44
    return p0
.end method

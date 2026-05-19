.class public final Lpantanal/app/groupcard/utils/GroupCardTools;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lpantanal/app/groupcard/utils/GroupCardTools;

.field public static final TAG:Ljava/lang/String; = "GroupCardTools"

.field private static final entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ld3/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lpantanal/app/groupcard/scene/PantaSceneSupportObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile isGCPCanRunSceneInCurOs:Ljava/lang/Boolean;

.field private static volatile isLauncherSupportScene:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/utils/GroupCardTools;

    invoke-direct {v0}, Lpantanal/app/groupcard/utils/GroupCardTools;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->INSTANCE:Lpantanal/app/groupcard/utils/GroupCardTools;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$doNotifyToOuterObservers(Lpantanal/app/groupcard/utils/GroupCardTools;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/utils/GroupCardTools;->doNotifyToOuterObservers(IZ)V

    return-void
.end method

.method public static final synthetic access$isGCPCanRunSceneInCurOs(Lpantanal/app/groupcard/utils/GroupCardTools;Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isLauncherSupportScene(Lpantanal/app/groupcard/utils/GroupCardTools;Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final doNotifyToOuterObservers(IZ)V
    .registers 14

    sget-object p0, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_10

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_10
    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object v1, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v1, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotifyToOuterObservers begin,entrance= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",total observer count= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isSupportSceneAbility = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GroupCardTools"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpantanal/app/groupcard/scene/PantaSceneSupportObserver;

    invoke-interface {p1, p2}, Lpantanal/app/groupcard/scene/PantaSceneSupportObserver;->onChanged(Z)V

    goto :goto_4f

    :cond_5f
    return-void
.end method

.method private final isGCPCanRunSceneInCurOs(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 28

    sget-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs:Ljava/lang/Boolean;

    if-nez v0, :cond_16f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/card_group_plugin/PantanalCardGroupSdk.apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcpLauncherSceneSupportMinOS"

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pluginFilePath"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v4, "getPluginMetaData,pluginFilePath="

    const-string v5, ",metaName="

    invoke-static {v4, v0, v5, v1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PantanalUtils"

    move-object v4, v2

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v14, 0x0

    :try_start_45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_58

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    if-eqz v0, :cond_60

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_61

    :cond_60
    move v0, v14

    :goto_61
    const-string v4, "PantanalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPluginMetaData,metaDataValue="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_45 .. :try_end_81} :catchall_82

    goto :goto_c8

    :catchall_82
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_ae

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPluginMetaData error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_ae
    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "PantanalUtils"

    const-string v17, "getPluginMetaData, return defaultValue:0"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v0, v14

    :goto_c8
    if-nez v0, :cond_ce

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_16a

    :cond_ce
    const-string v1, "checkIsUnderCurOS"

    :try_start_d0
    sget v2, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "OSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",osVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",curOSVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-gt v0, v2, :cond_101

    const/4 v14, 0x1

    :cond_101
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_105
    .catchall {:try_start_d0 .. :try_end_105} :catchall_106

    goto :goto_10b

    :catchall_106
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_10b
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_135

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "OSUtils"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_135
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v3, v0, Lh4/k$a;

    if-eqz v3, :cond_13c

    move-object v0, v2

    :cond_13c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "OSUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_16a
    sput-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs:Ljava/lang/Boolean;

    sget-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs:Ljava/lang/Boolean;

    return-object v0

    :cond_16f
    sget-object v0, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs:Ljava/lang/Boolean;

    return-object v0
.end method

.method private final isLauncherSupportScene(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4

    sget-object p0, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene:Ljava/lang/Boolean;

    if-nez p0, :cond_16

    const/4 p0, 0x0

    const-string v0, "com.android.launcher"

    const-string v1, "com.android.launcher.support.isSupportGroupCardSceneAbility"

    invoke-static {p1, v0, v1, p0}, Ly8/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene:Ljava/lang/Boolean;

    sget-object p0, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene:Ljava/lang/Boolean;

    goto :goto_18

    :cond_16
    sget-object p0, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene:Ljava/lang/Boolean;

    :goto_18
    return-object p0
.end method

.method public static final isSupportSceneAbility(Landroid/content/Context;I)Z
    .registers 29
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-eq v3, v1, :cond_20

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "GroupCardTools"

    const-string v5, "isSupportSceneAbility,entranceType is not launcher,return false"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_20
    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    invoke-static {v0, v2}, Lk3/b;->c(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isSupportScene:"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "StaticSdk"

    invoke-static {v4, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v3}, Lpantanal/app/groupcard/CardGroupSdk;->isInitSuccess()Z

    move-result v3

    if-eqz v3, :cond_90

    if-nez v0, :cond_43

    goto :goto_90

    :cond_43
    sget-object v3, Lpantanal/app/groupcard/utils/GroupCardTools;->INSTANCE:Lpantanal/app/groupcard/utils/GroupCardTools;

    invoke-direct {v3, v0}, Lpantanal/app/groupcard/utils/GroupCardTools;->isLauncherSupportScene(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v0}, Lpantanal/app/groupcard/utils/GroupCardTools;->isGCPCanRunSceneInCurOs(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_5e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v2, 0x1

    :cond_5e
    sget-object v5, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportSceneAbility, isStaticSdkSupportScene= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isLauncherSupportScene= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isGCPCanRunSceneInCurOs= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "GroupCardTools"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_90
    :goto_90
    sget-object v16, Ly8/c;->a:Ly8/c;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "GroupCardTools"

    const-string v18, "isSupportSceneAbility,CardGroupSdk isInitSuccess = false"

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2
.end method

.method private final queryAndNotify(ILandroid/content/Context;)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardTools"

    const-string v2, "queryAndNotify,"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {p2, p1}, Lpantanal/app/groupcard/utils/GroupCardTools;->isSupportSceneAbility(Landroid/content/Context;I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/utils/GroupCardTools;->doNotifyToOuterObservers(IZ)V

    return-void
.end method

.method public static final registerSceneSupportObserver(ILandroid/content/Context;Lpantanal/app/groupcard/scene/PantaSceneSupportObserver;)V
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "abilityObserver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    sget-object v15, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v15, v0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerSceneSupportObserver begin,entrance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "GroupCardTools"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v4, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_4d

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    move-object v14, v5

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    new-instance v4, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;

    invoke-direct {v4, v1, v0}, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;-><init>(Landroid/content/Context;I)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    const-string v2, "observer"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lz2/d;->a:Lz2/d;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "registerSceneSupportObserver entranceType:"

    const-string v6, "SceneDecisionCenter"

    if-nez v1, :cond_96

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but context is null!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_96
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lz2/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lk3/b;->c(Landroid/content/Context;Z)Z

    move-result v2

    invoke-interface {v4, v2}, Ld3/b;->onChanged(Z)V

    :goto_b4
    invoke-virtual {v15, v0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSceneSupportObserver,do register to static sdk done,entrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v2, 0x0

    const-string v5, "GroupCardTools"

    move-object v4, v3

    move-object/from16 v16, v14

    move-object v14, v2

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_102

    :cond_dc
    move-object/from16 v16, v14

    invoke-virtual {v15, v0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSceneSupportObserver,already registered to staticSdk,entrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "GroupCardTools"

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_102
    invoke-virtual {v15, v0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerSceneSupportObserver done,entrance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",total observer size = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "GroupCardTools"

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lpantanal/app/groupcard/utils/GroupCardTools;->INSTANCE:Lpantanal/app/groupcard/utils/GroupCardTools;

    invoke-direct {v2, v0, v1}, Lpantanal/app/groupcard/utils/GroupCardTools;->queryAndNotify(ILandroid/content/Context;)V

    return-void
.end method

.method public static final unRegisterSceneSupportObserver(ILpantanal/app/groupcard/scene/PantaSceneSupportObserver;)V
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "observer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    sget-object v15, Ly8/c;->a:Ly8/c;

    sget-object v4, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v4, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v4

    const/4 v14, 0x0

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2a

    :cond_29
    move-object v5, v14

    :goto_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unRegisterSceneSupportObserver begin,entrance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",observer count = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",observer = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/16 v16, 0x0

    const-string v5, "GroupCardTools"

    move-object v4, v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v3, :cond_65

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_65
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_72

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_70

    goto :goto_72

    :cond_70
    move v5, v0

    goto :goto_73

    :cond_72
    :goto_72
    move v5, v4

    :goto_73
    if-eqz v5, :cond_188

    sget-object v3, Lpantanal/app/groupcard/utils/GroupCardTools;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    sget-object v2, Lz2/d;->a:Lz2/d;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "unRegisterSceneSupportObserver entranceType:"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SceneDecisionCenter"

    invoke-static {v5, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lz2/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lz2/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b3

    goto :goto_b4

    :cond_b3
    move v4, v0

    :cond_b4
    :goto_b4
    if-eqz v4, :cond_160

    sget-object v2, Lcom/pantanal/server/content/broadcast/PackageReceiver;->b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    const-string v3, "unRegisterPackageReceiver  mContext(@"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v4

    iget-object v4, v4, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_c7

    goto :goto_cf

    :cond_c7
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_d1

    :goto_cf
    move-object v14, v15

    goto :goto_d9

    :cond_d1
    invoke-virtual {v4}, Landroid/content/Context;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_d9
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") isRegisterReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageReceiver"

    invoke-static {v4, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_ef
    sget-boolean v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    if-eqz v3, :cond_119

    invoke-virtual {v2}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_fc

    goto :goto_10c

    :cond_fc
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_105

    goto :goto_10c

    :cond_105
    invoke-virtual {v2}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_10c
    sput-boolean v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    invoke-virtual {v2}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v0

    iput-object v15, v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    const-string v0, "unRegisterPackageReceiver success!"

    invoke-static {v4, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_11b
    .catchall {:try_start_ef .. :try_end_11b} :catchall_11c

    goto :goto_121

    :catchall_11c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_121
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_160

    const-string v2, "unRegisterPackageReceiver mContext(@"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    invoke-virtual {v3}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_138

    goto :goto_140

    :cond_138
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_142

    :goto_140
    move-object v14, v15

    goto :goto_14a

    :cond_142
    invoke-virtual {v3}, Landroid/content/Context;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_14a
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_160
    sget-object v5, Ly8/c;->a:Ly8/c;

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v0, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterSceneSupportObserver end,do unregister to staticSdk,entrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "GroupCardTools"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_1a4

    :cond_188
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    const-string v1, "unRegisterSceneSupportObserver end,remain observer count= "

    const-string v2, ",not call to staticSdk."

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "GroupCardTools"

    move-object/from16 v4, v17

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1a4
    return-void
.end method

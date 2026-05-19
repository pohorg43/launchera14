.class public final Le3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pantanal/server/content/sdk/IStaticSdk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/a$a;
    }
.end annotation


# static fields
.field public static final c:Le3/a$a;

.field public static final d:Landroid/net/Uri;

.field public static final e:Lm7/j1;

.field public static f:I

.field public static g:Lm7/s1;

.field public static volatile h:Le3/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Le3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le3/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Le3/a;->c:Le3/a$a;

    const-string v0, "content://com.oplus.pantanal.ums.statictis/engine_version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le3/a;->d:Landroid/net/Uri;

    const-string v0, "#entrance_version"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    sput-object v0, Le3/a;->e:Lm7/j1;

    const-string v0, "content://com.oplus.pantanal.ums.statictis/type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const/4 v0, -0x1

    sput v0, Le3/a;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 9

    const-string p0, "subDomain"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb3/a;->a:Lb3/a;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "disableSubDomain = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeedlingServiceHelper"

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "context_aware_"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sub_domain_key"

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_26
    const-string v1, "disableSubDomain data: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3a

    goto :goto_4c

    :cond_3a
    const-string v5, "get IUserContext,call SeedlingServiceHelper provider"

    invoke-static {v0, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lb3/a;->e:Landroid/net/Uri;

    const-string v6, "SETTINGS_SUBDOMAIN_URI"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_75

    :goto_4c
    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lb3/a;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5a} :catch_89

    if-nez v1, :cond_5d

    goto :goto_8f

    :cond_5d
    :try_start_5d
    const-string v5, "get Context,call SeedlingServiceHelper provider"

    invoke-static {v0, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_6e

    if-ne p0, v3, :cond_69

    goto :goto_6a

    :cond_69
    move v3, p1

    :goto_6a
    :try_start_6a
    invoke-static {v1, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_89

    goto :goto_80

    :catchall_6e
    move-exception p0

    :try_start_6f
    throw p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v2

    :try_start_71
    invoke-static {v1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_75} :catch_89

    :cond_75
    :try_start_75
    invoke-virtual {v2, v5, p0, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_82

    if-ne p0, v3, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, p1

    :goto_7d
    :try_start_7d
    invoke-static {v2, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_89

    :goto_80
    move p1, v3

    goto :goto_8f

    :catchall_82
    move-exception p0

    :try_start_83
    throw p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v1

    :try_start_85
    invoke-static {v2, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    const-string v1, "disableSubDomain"

    invoke-static {v0, v1, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8f
    return p1
.end method

.method public b(Ljava/util/Set;IZ)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "entranceType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getCurRecommendList "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaticSdk"

    invoke-static {v1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    sget-object p0, La3/a;->b:La3/a;

    invoke-virtual {p0}, La3/a;->a()La3/b;

    move-result-object p0

    invoke-virtual {p0}, La3/b;->b()Ljava/util/List;

    move-result-object p0

    goto :goto_48

    :cond_22
    sget-object p2, Lz2/a;->b:Lz2/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DecisionCenter"

    const-string v0, "query desicion list"

    invoke-static {p0, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3c

    invoke-virtual {p2}, Lz2/a;->b()Lz2/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/c;->d(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    goto :goto_48

    :cond_3c
    invoke-virtual {p2}, Lz2/a;->b()Lz2/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/c;->d(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lz2/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_48
    return-object p0
.end method

.method public final c()V
    .registers 7

    sget-object p0, Le3/a;->e:Lm7/j1;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v3, Le3/a$b;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Le3/a$b;-><init>(Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Le3/a;->g:Lm7/s1;

    return-void
.end method

.method public d(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/SceneInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/d;->a:Lz2/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query scene recommend list, entranceType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SceneDecisionCenter"

    invoke-static {v0, p2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/d;->d()Lz2/e;

    move-result-object p2

    invoke-virtual {p2}, Lz2/e;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lz2/d;->e(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "querySceneRecommendList"

    const-string p2, "sceneResultList"

    invoke-static {v0, p1, p2, p0}, Lk3/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public e(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le3/a;->a:Landroid/content/Context;

    const-string p1, "StaticSdk"

    const-string v0, "init context,staticSdk version:1.1.13-beta-p3-SNAPSHOT"

    invoke-static {p1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Le3/a;->j()V

    if-eqz p2, :cond_16

    invoke-virtual {p0}, Le3/a;->c()V

    :cond_16
    return-void
.end method

.method public f(Lcom/oplus/channel/server/IUserContext;Z)V
    .registers 4

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le3/a;->b:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le3/a;->a:Landroid/content/Context;

    const-string p1, "StaticSdk"

    const-string v0, "init IUserContext,staticSdk version:1.1.13-beta-p3-SNAPSHOT"

    invoke-static {p1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Le3/a;->j()V

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Le3/a;->c()V

    :cond_1c
    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 16

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb3/a;->a:Lb3/a;

    const-string v0, "getString(getColumnIndexOrThrow(name))"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "queryServiceInfo: serviceId = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedlingServiceHelper"

    invoke-static {v1, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_18
    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_23

    goto :goto_39

    :cond_23
    const-string v6, "get IUserContext,call SeedlingServiceHelper query()"

    invoke-static {v1, v6}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lb3/a;->d:Landroid/net/Uri;

    const-string v7, "UMS_SERVICE_URI"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-nez v3, :cond_67

    :goto_39
    invoke-virtual {v2}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v7, Lb3/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_47} :catch_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_47} :catch_80

    if-nez v2, :cond_4a

    goto :goto_95

    :cond_4a
    :try_start_4a
    const-string v3, "get Context,call SeedlingServiceHelper query()"

    invoke-static {v1, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-string v9, "serviceId = ?"

    new-array v10, v5, [Ljava/lang/String;

    aput-object p1, v10, v4

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_60

    :try_start_5c
    invoke-static {v2, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_5f} :catch_87
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_80

    goto :goto_96

    :catchall_60
    move-exception v3

    :try_start_61
    throw v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v4

    :try_start_63
    invoke-static {v2, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_67} :catch_87
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_80

    :cond_67
    const/4 v10, 0x0

    :try_start_68
    const-string v11, "serviceId = ?"

    new-array v12, v5, [Ljava/lang/String;

    aput-object p1, v12, v4

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_79

    :try_start_74
    invoke-static {v3, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_77} :catch_87
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_80

    move-object v3, v2

    goto :goto_96

    :catchall_79
    move-exception v2

    :try_start_7a
    throw v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v4

    :try_start_7c
    invoke-static {v3, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_80
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_80} :catch_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_80} :catch_80

    :catch_80
    move-exception v2

    const-string v3, "queryFromUMS exception"

    invoke-static {v1, v3, v2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_95

    :catch_87
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "queryFromUMS SecurityException,"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_95
    move-object v3, p0

    :goto_96
    const-string v2, ""

    if-nez v3, :cond_9e

    move-object v0, p0

    move-object v5, v2

    move-object v6, v5

    goto :goto_dd

    :cond_9e
    :try_start_9e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d4

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b1} :catch_ec
    .catchall {:try_start_9e .. :try_end_b1} :catchall_ea

    :try_start_b1
    const-string v5, "subDomain"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_be} :catch_cf
    .catchall {:try_start_b1 .. :try_end_be} :catchall_ea

    :try_start_be
    const-string v6, "subDomainDesc"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cb} :catch_cd
    .catchall {:try_start_be .. :try_end_cb} :catchall_ea

    move-object v2, v4

    goto :goto_db

    :catch_cd
    move-exception v0

    goto :goto_d1

    :catch_cf
    move-exception v0

    move-object v5, v2

    :goto_d1
    move-object v6, v2

    move-object v2, v4

    goto :goto_ef

    :cond_d4
    :try_start_d4
    const-string v0, "query,  the cursor is empty"

    invoke-static {v1, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d9} :catch_ec
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_ea

    move-object v5, v2

    move-object v6, v5

    :goto_db
    :try_start_db
    sget-object v0, Lh4/z;->a:Lh4/z;

    :goto_dd
    if-nez v0, :cond_e7

    const-string v0, "query,  the cursor is null"

    invoke-static {v1, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e4} :catch_e5
    .catchall {:try_start_db .. :try_end_e4} :catchall_ea

    goto :goto_e7

    :catch_e5
    move-exception v0

    goto :goto_ef

    :cond_e7
    :goto_e7
    if-nez v3, :cond_f7

    :goto_e9
    goto :goto_fa

    :catchall_ea
    move-exception p0

    goto :goto_127

    :catch_ec
    move-exception v0

    move-object v5, v2

    move-object v6, v5

    :goto_ef
    :try_start_ef
    const-string v4, "query error"

    invoke-static {v1, v4, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_ea

    if-nez v3, :cond_f7

    goto :goto_e9

    :cond_f7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_fa
    move-object v9, v2

    move-object v10, v5

    move-object v11, v6

    new-instance v0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    :try_start_ff
    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.heytap.speechassist"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_10f
    .catchall {:try_start_ff .. :try_end_10f} :catchall_110

    goto :goto_120

    :catchall_110
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_120

    const-string v3, "getIcon failure: "

    invoke-static {v1, v3, v2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_120
    :goto_120
    move-object v12, p0

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :goto_127
    if-nez v3, :cond_12a

    goto :goto_12d

    :cond_12a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_12d
    throw p0
.end method

.method public h(IIZLcom/pantanal/server/content/recommendlist/ListObserver;)V
    .registers 12

    const-string p0, "observer"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaticSdk"

    invoke-static {v1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_60

    sget-object p1, La3/a;->b:La3/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p4, La3/a;->c:Lcom/pantanal/server/content/recommendlist/ListObserver;

    invoke-virtual {p1}, La3/a;->a()La3/b;

    move-result-object p2

    sget-object p3, La3/a;->f:La3/a$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ShelfDecisionDao"

    const-string p2, "registerContentObserver"

    invoke-static {p0, p2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lk3/l;->a:Lk3/l;

    sget-object p0, Lm7/y0;->a:Lm7/y0;

    invoke-static {p0}, Lk3/l;->a(Lm7/y0;)Lm7/j1;

    move-result-object p0

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, La3/c;

    invoke-direct {v4, p3, v0}, La3/c;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, La3/b;->b:Lm7/s1;

    invoke-virtual {p1}, La3/a;->b()V

    goto :goto_db

    :cond_60
    sget-object p2, Lz2/a;->b:Lz2/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entrance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " call register(),registered entrance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecisionCenter"

    invoke-static {v2, v1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lz2/a;->d()Ljava/util/Map;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p4, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_d4

    invoke-virtual {p2}, Lz2/a;->b()Lz2/c;

    move-result-object p3

    sget-object p4, Lz2/a;->h:Lz2/a$b;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p3, Lz2/c;->a:Lm7/j1;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lz2/b;

    invoke-direct {v4, p4, v0}, Lz2/b;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Lz2/c;->d:Lm7/s1;

    :cond_d4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lz2/a;->g(Ljava/lang/Integer;)V

    :goto_db
    return-void
.end method

.method public i(I)V
    .registers 9

    sget-object p0, Lz2/d;->a:Lz2/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unRegisterScene entranceType:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDecisionCenter"

    invoke-static {v1, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    :goto_2c
    if-eqz p1, :cond_52

    invoke-virtual {p0}, Lz2/d;->d()Lz2/e;

    move-result-object p0

    sget-object p1, Lz2/d;->h:Lz2/d$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/e;->a:Lm7/j1;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lz2/g;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lz2/g;-><init>(Landroid/database/ContentObserver;Lz2/e;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Lz2/e;->f:Lm7/s1;

    :cond_52
    return-void
.end method

.method public j()V
    .registers 8

    const-string p0, "StaticSdk"

    const-string v0, "call watchDatabase.."

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj3/a;->e:Lj3/a$a;

    monitor-enter p0

    :try_start_a
    sget-object v0, Lj3/a;->f:Lj3/a;

    if-nez v0, :cond_17

    new-instance v0, Lj3/a;

    invoke-direct {v0}, Lj3/a;-><init>()V

    sput-object v0, Lj3/a;->f:Lj3/a;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_2f

    monitor-exit p0

    goto :goto_18

    :cond_17
    monitor-exit p0

    :goto_18
    iget-object p0, v0, Lj3/a;->c:Lm7/j1;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lj3/c;

    const/4 p0, 0x0

    invoke-direct {v4, v0, p0}, Lj3/c;-><init>(Lj3/a;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    iput-object p0, v0, Lj3/a;->d:Lm7/s1;

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

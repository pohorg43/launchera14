.class public final Lb3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pantanal/server/content/domail/ISeedlingService;


# static fields
.field public static final a:Lb3/a;

.field public static b:Ljava/lang/String;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lb3/a;

    invoke-direct {v0}, Lb3/a;-><init>()V

    sput-object v0, Lb3/a;->a:Lb3/a;

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lk3/a;->a:Landroid/net/Uri;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lk3/a;->b:Z

    if-eqz v1, :cond_1b

    sget-object v0, Lk3/a;->c:Ljava/lang/String;

    goto :goto_70

    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lk3/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_4a

    if-nez v0, :cond_2b

    move-object v3, v2

    goto :goto_4f

    :cond_2b
    :try_start_2b
    const-string v3, "isAdviceCombined"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_35

    move-object v3, v2

    goto :goto_3f

    :cond_35
    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_43

    :goto_3f
    :try_start_3f
    invoke-static {v0, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    goto :goto_4f

    :catchall_43
    move-exception v3

    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v4

    :try_start_46
    invoke-static {v0, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_4f
    instance-of v0, v3, Lh4/k$a;

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    move-object v2, v3

    :goto_55
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5e
    if-eqz v1, :cond_6b

    const-string v0, "AdviceAuthorityHelper"

    const-string v1, "advice is the latest"

    invoke-static {v0, v1}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.advice.settings.combine.external.pas"

    sput-object v0, Lk3/a;->c:Ljava/lang/String;

    :cond_6b
    const/4 v0, 0x1

    sput-boolean v0, Lk3/a;->b:Z

    sget-object v0, Lk3/a;->c:Ljava/lang/String;

    :goto_70
    sput-object v0, Lb3/a;->b:Ljava/lang/String;

    const-string v0, "content://com.oplus.pantanal.ums.statictis"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb3/a;->c:Landroid/net/Uri;

    const-string v1, "content://com.oplus.pantanal.ums.decision/subdomain_title"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lb3/a;->d:Landroid/net/Uri;

    const-string v1, "content://"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lb3/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sub_domain_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lb3/a;->e:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/insert_advice_settings"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb3/a;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSubDomain(Ljava/lang/String;)Z
    .registers 9

    const-string p0, "subDomain"

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

    :try_start_21
    const-string v1, "disableSubDomain data: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_35

    goto :goto_47

    :cond_35
    const-string v5, "get IUserContext,call SeedlingServiceHelper provider"

    invoke-static {v0, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lb3/a;->e:Landroid/net/Uri;

    const-string v6, "SETTINGS_SUBDOMAIN_URI"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_70

    :goto_47
    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lb3/a;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_83

    if-nez v1, :cond_58

    goto :goto_89

    :cond_58
    :try_start_58
    const-string v5, "get Context,call SeedlingServiceHelper provider"

    invoke-static {v0, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_69

    if-ne p0, v3, :cond_64

    goto :goto_65

    :cond_64
    move v3, p1

    :goto_65
    :try_start_65
    invoke-static {v1, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_83

    return v3

    :catchall_69
    move-exception p0

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v2

    :try_start_6c
    invoke-static {v1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_83

    :cond_70
    :try_start_70
    invoke-virtual {v2, v5, p0, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_7c

    if-ne p0, v3, :cond_77

    goto :goto_78

    :cond_77
    move v3, p1

    :goto_78
    :try_start_78
    invoke-static {v2, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_83

    return v3

    :catchall_7c
    move-exception p0

    :try_start_7d
    throw p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v1

    :try_start_7f
    invoke-static {v2, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    const-string v1, "disableSubDomain"

    invoke-static {v0, v1, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_89
    return p1
.end method

.method public queryFluidCloud(Landroid/content/Context;Ljava/lang/String;)Lcom/pantanal/server/content/domail/FluidCloudInfo;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryFluidCloud serviceId : "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingServiceHelper"

    invoke-static {v1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb3/a;->queryFluidClouds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_29

    :cond_27
    move p2, p1

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p2, 0x1

    :goto_2a
    if-eqz p2, :cond_2e

    const/4 p0, 0x0

    return-object p0

    :cond_2e
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/pantanal/server/content/domail/FluidCloudInfo;

    return-object p0
.end method

.method public queryFluidClouds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/domail/FluidCloudInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "SeedlingServiceHelper"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_d
    const-string v2, "queryFluidClouds serviceIds : "

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "queryType"

    const/16 v4, 0x3ec

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p2, Le3/a;->c:Le3/a$a;

    invoke-virtual {p2}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object p2
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_30} :catch_83

    const-string v0, "queryFluidCloud"

    if-nez p2, :cond_36

    move-object p2, v1

    goto :goto_4d

    :cond_36
    :try_start_36
    sget-object v3, Lb3/a;->c:Landroid/net/Uri;

    const-string v4, "URI_UMS_STATICTIS"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :goto_4d
    if-nez p2, :cond_59

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lb3/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_59
    if-nez p2, :cond_5d

    move-object p1, v1

    goto :goto_63

    :cond_5d
    const-string p1, "fluidCloudResult"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_63
    const-string p2, "queryFluidClouds result json : "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lb3/a$a;

    invoke-direct {p2}, Lb3/a$a;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p1, p2}, Lk3/g;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string p1, "queryFluidClouds fluid cloud list : "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_82} :catch_83

    goto :goto_91

    :catch_83
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "queryFluidClouds SecurityException,"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_91
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public queryServiceInfo(Ljava/lang/String;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 16

    const-string p0, "getString(getColumnIndexOrThrow(name))"

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryServiceInfo: serviceId = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingServiceHelper"

    invoke-static {v1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_13
    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1e

    goto :goto_34

    :cond_1e
    const-string v6, "get IUserContext,call SeedlingServiceHelper query()"

    invoke-static {v1, v6}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lb3/a;->d:Landroid/net/Uri;

    const-string v7, "UMS_SERVICE_URI"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-nez v3, :cond_62

    :goto_34
    invoke-virtual {v2}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v7, Lb3/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_42} :catch_82
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_42} :catch_7b

    if-nez v2, :cond_45

    goto :goto_90

    :cond_45
    :try_start_45
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
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_5b

    :try_start_57
    invoke-static {v2, v0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_5a} :catch_82
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_7b

    goto :goto_91

    :catchall_5b
    move-exception v3

    :try_start_5c
    throw v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v4

    :try_start_5e
    invoke-static {v2, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_5e .. :try_end_62} :catch_82
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_7b

    :cond_62
    const/4 v10, 0x0

    :try_start_63
    const-string v11, "serviceId = ?"

    new-array v12, v5, [Ljava/lang/String;

    aput-object p1, v12, v4

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_74

    :try_start_6f
    invoke-static {v3, v0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_72
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_72} :catch_82
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7b

    move-object v3, v2

    goto :goto_91

    :catchall_74
    move-exception v2

    :try_start_75
    throw v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v4

    :try_start_77
    invoke-static {v3, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7b
    .catch Ljava/lang/SecurityException; {:try_start_77 .. :try_end_7b} :catch_82
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception v2

    const-string v3, "queryFromUMS exception"

    invoke-static {v1, v3, v2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    :catch_82
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "queryFromUMS SecurityException,"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_90
    move-object v3, v0

    :goto_91
    const-string v2, ""

    if-nez v3, :cond_99

    move-object p0, v0

    move-object v5, v2

    move-object v6, v5

    goto :goto_d9

    :cond_99
    :try_start_99
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d0

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ac} :catch_ef
    .catchall {:try_start_99 .. :try_end_ac} :catchall_ed

    :try_start_ac
    const-string v5, "subDomain"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b9} :catch_cb
    .catchall {:try_start_ac .. :try_end_b9} :catchall_ed

    :try_start_b9
    const-string v6, "subDomainDesc"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c6} :catch_c8
    .catchall {:try_start_b9 .. :try_end_c6} :catchall_ed

    move-object v2, v4

    goto :goto_d7

    :catch_c8
    move-exception p0

    move-object v6, v2

    goto :goto_ce

    :catch_cb
    move-exception p0

    move-object v5, v2

    move-object v6, v5

    :goto_ce
    move-object v2, v4

    goto :goto_f2

    :cond_d0
    :try_start_d0
    const-string p0, "query,  the cursor is empty"

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_ef
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_ed

    move-object v5, v2

    move-object v6, v5

    :goto_d7
    :try_start_d7
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_d9
    if-nez p0, :cond_e3

    const-string p0, "query,  the cursor is null"

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e0} :catch_e1
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_ed

    goto :goto_e3

    :catch_e1
    move-exception p0

    goto :goto_f2

    :cond_e3
    :goto_e3
    if-nez v3, :cond_e6

    goto :goto_e9

    :cond_e6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_e9
    move-object v9, v2

    move-object v10, v5

    move-object v11, v6

    goto :goto_fa

    :catchall_ed
    move-exception p0

    goto :goto_124

    :catch_ef
    move-exception p0

    move-object v5, v2

    move-object v6, v5

    :goto_f2
    :try_start_f2
    const-string v4, "query error"

    invoke-static {v1, v4, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f7
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_ed

    if-nez v3, :cond_e6

    goto :goto_e9

    :goto_fa
    new-instance p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    :try_start_fc
    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.heytap.speechassist"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_10c
    .catchall {:try_start_fc .. :try_end_10c} :catchall_10d

    goto :goto_11d

    :catchall_10d
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_11d

    const-string v3, "getIcon failure: "

    invoke-static {v1, v3, v2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11d
    :goto_11d
    move-object v12, v0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :goto_124
    if-nez v3, :cond_127

    goto :goto_12a

    :cond_127
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_12a
    throw p0
.end method

.method public updateFluidCloud(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)J
    .registers 9

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    const-string v3, "SeedlingServiceHelper"

    const/4 v4, 0x0

    if-eqz v0, :cond_1c

    const-string p0, "content values serviceid not empty"

    invoke-static {v3, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-object v1, v4

    goto :goto_6a

    :cond_1c
    if-nez p2, :cond_26

    if-nez p3, :cond_26

    const-string p0, "content values closeEntry serviceSwitch is null"

    invoke-static {v3, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_26
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    if-nez v0, :cond_64

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    if-eqz v1, :cond_40

    goto :goto_64

    :cond_40
    const/4 v0, -0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_56

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v0, :cond_56

    const-string p0, "closeEntry"

    invoke-virtual {v1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_56
    if-eqz p3, :cond_6a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v0, :cond_6a

    const-string p0, "serviceSwitch"

    invoke-virtual {v1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6a

    :cond_64
    :goto_64
    const-string p0, "check fluid cloud param fail"

    invoke-static {v3, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_6a
    :goto_6a
    const-wide/16 p0, -0x1

    if-nez v1, :cond_74

    const-string p2, "please check the param"

    invoke-static {v3, p2}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0

    :cond_74
    :try_start_74
    sget-object p2, Le3/a;->c:Le3/a$a;

    invoke-virtual {p2}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object p3

    if-nez p3, :cond_7f

    :goto_7c
    move-object v0, v4

    move-object v2, v0

    goto :goto_9f

    :cond_7f
    const-string v0, "update fluid cloud get IUserContext"

    invoke-static {v3, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb3/a;->f:Landroid/net/Uri;

    const-string v2, "UMS_INSERT_ADVICE_URI"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p3
    :try_end_93
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_93} :catch_d3

    if-nez p3, :cond_96

    goto :goto_7c

    :cond_96
    :try_start_96
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_cc

    :try_start_9a
    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_9c
    .catchall {:try_start_9a .. :try_end_9c} :catchall_c9

    :try_start_9c
    invoke-static {p3, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_9f
    if-nez v2, :cond_e2

    invoke-virtual {p2}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lb3/a;->f:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_9c .. :try_end_af} :catch_c6

    if-nez p2, :cond_b2

    goto :goto_e2

    :cond_b2
    :try_start_b2
    const-string v2, "update fluid cloud get Context"

    invoke-static {v3, v2}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_bf

    :try_start_bb
    invoke-static {p2, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_bb .. :try_end_be} :catch_c6

    goto :goto_e2

    :catchall_bf
    move-exception p3

    :try_start_c0
    throw p3
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception v1

    :try_start_c2
    invoke-static {p2, p3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_c6
    .catch Ljava/lang/SecurityException; {:try_start_c2 .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception p2

    move-object v4, v0

    goto :goto_d4

    :catchall_c9
    move-exception p2

    move-object v4, v0

    goto :goto_cd

    :catchall_cc
    move-exception p2

    :goto_cd
    :try_start_cd
    throw p2
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception v0

    :try_start_cf
    invoke-static {p3, p2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d3
    .catch Ljava/lang/SecurityException; {:try_start_cf .. :try_end_d3} :catch_d3

    :catch_d3
    move-exception p2

    :goto_d4
    invoke-virtual {p2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "update fluid cloud SecurityException,"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :cond_e2
    :goto_e2
    if-nez v0, :cond_e5

    goto :goto_e9

    :cond_e5
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    :goto_e9
    return-wide p0
.end method

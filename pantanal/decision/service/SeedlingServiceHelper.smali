.class public final Lpantanal/decision/service/SeedlingServiceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lpantanal/decision/service/SeedlingServiceHelper;

.field private static final TAG:Ljava/lang/String; = "SeedlingServiceHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/decision/service/SeedlingServiceHelper;

    invoke-direct {v0}, Lpantanal/decision/service/SeedlingServiceHelper;-><init>()V

    sput-object v0, Lpantanal/decision/service/SeedlingServiceHelper;->INSTANCE:Lpantanal/decision/service/SeedlingServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(getColumnIndexOrThrow(name))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final toSeedlingSdkBean(Lcom/pantanal/server/content/domail/SeedlingServiceInfo;)Lpantanal/decision/SeedlingServiceInfo;
    .registers 8

    new-instance p0, Lpantanal/decision/SeedlingServiceInfo;

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->getSubDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->getSubDomainDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpantanal/decision/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method


# virtual methods
.method public final disableSubDomain(Ljava/lang/String;)Z
    .registers 14

    const-string p0, "subDomain"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "disableSubDomain = "

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingServiceHelper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :try_start_1c
    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v0

    check-cast v0, Le3/a;

    invoke-virtual {v0, p1}, Le3/a;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2d

    :try_start_28
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    goto :goto_34

    :catchall_2b
    move-exception v0

    goto :goto_30

    :catchall_2d
    move-exception p1

    move-object v0, p1

    move p1, p0

    :goto_30
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_34
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_55

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "disableSubDomain error, msg = "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingServiceHelper"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_56

    :cond_55
    move p0, p1

    :goto_56
    return p0
.end method

.method public final queryServiceInfo(Ljava/lang/String;)Lpantanal/decision/SeedlingServiceInfo;
    .registers 13

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "queryServiceInfo: serviceId = "

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingServiceHelper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :try_start_1c
    sget-object v0, Lpantanal/decision/service/SeedlingServiceHelper;->INSTANCE:Lpantanal/decision/service/SeedlingServiceHelper;

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v1

    check-cast v1, Le3/a;

    invoke-virtual {v1, p1}, Le3/a;->g(Ljava/lang/String;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lpantanal/decision/service/SeedlingServiceHelper;->toSeedlingSdkBean(Lcom/pantanal/server/content/domail/SeedlingServiceInfo;)Lpantanal/decision/SeedlingServiceInfo;

    move-result-object p0

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_36
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_56

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "queryServiceInfo error, msg = "

    invoke-static {v1, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingServiceHelper"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_56
    if-nez p0, :cond_5e

    sget-object p0, Lpantanal/decision/SeedlingServiceInfo;->Companion:Lpantanal/decision/SeedlingServiceInfo$Companion;

    invoke-virtual {p0}, Lpantanal/decision/SeedlingServiceInfo$Companion;->empty()Lpantanal/decision/SeedlingServiceInfo;

    move-result-object p0

    :cond_5e
    return-object p0
.end method

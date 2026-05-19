.class public Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/task/ISeedlingTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingTaskCompatibleImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->Companion:Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 13

    const-string p0, "warning, default impl! maybe version is not compatible, methodName:"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedlingTaskCompatibleImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getStatus()Ljava/lang/Object;
    .registers 2

    const-string v0, "getStatus"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getTaskName()Ljava/lang/Object;
    .registers 2

    const-string v0, "getTaskName"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public isCanceled()Z
    .registers 2

    const-string v0, "isCanceled"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.class public final Lpantanal/app/manager/ClientProxyManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/manager/ClientProxyManager;
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

    invoke-direct {p0}, Lpantanal/app/manager/ClientProxyManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lpantanal/app/manager/ClientProxyManager;->access$getApplicationContext$cp()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance(Lpantanal/app/bean/Entrance;)Lpantanal/app/manager/ClientProxyManager;
    .registers 15

    const-string v0, "entrance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpantanal/app/manager/ClientProxyManager;->access$getInstance$cp()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v0

    if-nez v0, :cond_43

    monitor-enter p0

    :try_start_c
    invoke-static {}, Lpantanal/app/manager/ClientProxyManager;->access$getInstance$cp()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v0

    if-nez v0, :cond_3e

    new-instance v0, Lpantanal/app/manager/ClientProxyManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpantanal/app/manager/ClientProxyManager;-><init>(Lpantanal/app/bean/Entrance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    invoke-static {v0}, Lpantanal/app/manager/ClientProxyManager;->access$setInstance$cp(Lpantanal/app/manager/ClientProxyManager;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "ClientProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance entrance:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_40

    :cond_3e
    monitor-exit p0

    goto :goto_43

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_43
    :goto_43
    return-object v0
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lpantanal/app/manager/ClientProxyManager;->access$setApplicationContext$cp(Landroid/content/Context;)V

    return-void
.end method

.class public final Le3/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object p0

    check-cast p0, Le3/a;

    iget-object p0, p0, Le3/a;->a:Landroid/content/Context;

    const-string v0, "Static sdk not init"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    invoke-virtual {p0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object p0

    check-cast p0, Le3/a;

    iget-object p0, p0, Le3/a;->b:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public final c()Lcom/pantanal/server/content/sdk/IStaticSdk;
    .registers 3

    sget-object v0, Le3/a;->h:Le3/a;

    if-nez v0, :cond_17

    monitor-enter p0

    :try_start_5
    sget-object v0, Le3/a;->h:Le3/a;

    if-nez v0, :cond_12

    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    sget-object v1, Le3/a;->c:Le3/a$a;

    sput-object v0, Le3/a;->h:Le3/a;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

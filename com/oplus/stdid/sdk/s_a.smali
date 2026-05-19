.class public Lcom/oplus/stdid/sdk/s_a;
.super Lb9/b;
.source ""


# static fields
.field public static s_c:Lcom/oplus/stdid/sdk/s_a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb9/b;-><init>()V

    return-void
.end method

.method public static s_a()Lcom/oplus/stdid/sdk/s_a;
    .registers 2

    sget-object v0, Lcom/oplus/stdid/sdk/s_a;->s_c:Lcom/oplus/stdid/sdk/s_a;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/stdid/sdk/s_a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/stdid/sdk/s_a;->s_c:Lcom/oplus/stdid/sdk/s_a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/stdid/sdk/s_a;

    invoke-direct {v1}, Lcom/oplus/stdid/sdk/s_a;-><init>()V

    sput-object v1, Lcom/oplus/stdid/sdk/s_a;->s_c:Lcom/oplus/stdid/sdk/s_a;

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
    sget-object v0, Lcom/oplus/stdid/sdk/s_a;->s_c:Lcom/oplus/stdid/sdk/s_a;

    return-object v0
.end method


# virtual methods
.method public s_a(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "OUID"

    const-string v1, ""

    invoke-virtual {p0, p2, v0, v1}, Lcom/oplus/stdid/sdk/s_a;->s_a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OUID_STATUS"

    const-string v1, "FALSE"

    invoke-virtual {p0, p2, v0, v1}, Lcom/oplus/stdid/sdk/s_a;->s_a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/stdid/sdk/s_b$s_b;->s_a:Lcom/oplus/stdid/sdk/s_b;

    invoke-virtual {p0, p1, p2, p3}, Lb9/c;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public final s_a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lb9/b;->s_a:Ljava/util/Map;

    new-instance v0, Lc9/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p2}, Lc9/a;->f(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-direct {v0, p3, v3, v4}, Lc9/e;-><init>(Ljava/lang/String;J)V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

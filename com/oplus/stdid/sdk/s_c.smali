.class public Lcom/oplus/stdid/sdk/s_c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static s_a:Z

.field public static s_b:Z

.field public static s_c:Z


# direct methods
.method public static s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    const-string v1, ""

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/stdid/sdk/s_c;->s_a()Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-static {p0, p1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    goto :goto_16

    :cond_12
    invoke-static {p0, p1}, Lv3/x;->c(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    :goto_16
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_24
    return-object v1
.end method

.method public static s_a(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lc9/d;->a:I

    const/16 v1, 0x2710

    if-gt p1, v0, :cond_c

    if-lez p1, :cond_c

    move v0, v1

    goto :goto_e

    :cond_c
    const/16 v0, 0x2711

    :goto_e
    if-ne v0, v1, :cond_29

    invoke-static {p1}, Lc9/a;->g(I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/oplus/stdid/sdk/s_a;->s_a()Lcom/oplus/stdid/sdk/s_a;

    move-result-object v0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_24
    invoke-virtual {v0, p0, p1}, Lb9/b;->s_a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s_a()Z
    .registers 4

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_a:Z

    const/4 v1, 0x0

    const-string v2, "IDHelper"

    if-nez v0, :cond_d

    const-string v0, "1001"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_b:Z

    if-nez v0, :cond_17

    const-string v0, "1002"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_27

    const-string v0, "1003"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method public static s_b()Z
    .registers 3

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    const-string v1, "1001"

    const-string v2, "IDHelper"

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_a:Z

    if-nez v0, :cond_f

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_b:Z

    return v0

    :cond_12
    sget-boolean v0, Lv3/x;->a:Z

    if-nez v0, :cond_19

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    sget-boolean v0, Lv3/x;->b:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

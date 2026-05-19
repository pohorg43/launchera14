.class public Lv3/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method public static a(I[I[Ljava/lang/String;[I)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x24

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_3c

    aget v2, p1, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    goto :goto_39

    :cond_1b
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    if-eqz v2, :cond_39

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_2a
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 5
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
    const-string v2, ""

    if-ne v0, v1, :cond_4d

    invoke-static {p1}, Lc9/a;->g(I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lv3/x;->d()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "OUID_STATUS"

    if-ne v0, v1, :cond_3a

    const-string v1, "FALSE"

    goto :goto_3b

    :cond_3a
    move-object v1, v2

    :goto_3b
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_3f
    return-object p0

    :cond_40
    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object v0

    invoke-static {p0}, Lv3/x;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lb9/b;->s_a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_4d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()Z
    .registers 4

    sget-boolean v0, Lv3/x;->a:Z

    const/4 v1, 0x0

    const-string v2, "IDHelper"

    if-nez v0, :cond_d

    const-string v0, "1001"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    sget-boolean v0, Lv3/x;->b:Z

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

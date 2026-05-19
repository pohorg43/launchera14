.class public Lb9/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public s_a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc9/e;",
            ">;"
        }
    .end annotation
.end field

.field public s_b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb9/b;->s_a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public s_a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v2, "OUID_STATUS"

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    iget-object v1, p0, Lb9/b;->s_a:Ljava/util/Map;

    sget-object v4, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_14
    const-string v4, "cache"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "GUID"

    const-string v6, "GUID_TIME"

    const-string v7, "GUID_IV"

    invoke-static {v4, v1, v5, v6, v7}, Lc9/a;->e(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "APID"

    const-string v6, "APID_TIME"

    const-string v7, "APID_IV"

    invoke-static {v4, v1, v5, v6, v7}, Lc9/a;->e(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DUID"

    const-string v6, "DUID_TIME"

    invoke-static {v4, v1, v5, v6}, Lc9/a;->d(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AUID"

    const-string v6, "AUID_TIME"

    invoke-static {v4, v1, v5, v6}, Lc9/a;->d(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OUID"

    const-string v6, "OUID_TIME"

    invoke-static {v4, v1, v5, v6}, Lc9/a;->d(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OUID_STATUS_TIME"

    invoke-static {v4, v1, v2, v5}, Lc9/a;->d(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_46} :catch_47

    goto :goto_69

    :catch_47
    move-exception v1

    const-string v4, "1020:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    :cond_60
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    :goto_64
    const-string v4, "IDHelper"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6d
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v5, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc9/e;

    invoke-virtual {v5, v4}, Lc9/e;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "1025"

    invoke-static {v7}, La6/m;->a(Ljava/lang/String;)V

    sget-object v7, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lb9/a;

    invoke-direct {v8, p0, p1, v6}, Lb9/a;-><init>(Lb9/b;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_a6
    iget-object v5, v5, Lc9/e;->a:Ljava/lang/String;

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x0

    :goto_aa
    if-nez v5, :cond_6d

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_b0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_be

    const-string v1, "1026"

    invoke-static {v1}, La6/m;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v3}, Lb9/b;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_be
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/e;

    if-nez v1, :cond_e5

    if-ne v0, v2, :cond_e2

    const-string v1, "FALSE"

    goto :goto_e7

    :cond_e2
    const-string v1, ""

    goto :goto_e7

    :cond_e5
    iget-object v1, v1, Lc9/e;->a:Ljava/lang/String;

    :goto_e7
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    :cond_eb
    const-string p0, "2025"

    invoke-static {p0}, La6/m;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public s_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lc9/a;->f(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v0

    if-nez p3, :cond_c

    return-void

    :cond_c
    const-string v0, "GUID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "APID"

    if-nez v1, :cond_24

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    :cond_24
    iget-object v1, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object p0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc9/e;

    iput-object p3, p0, Lc9/e;->a:Ljava/lang/String;

    iput-wide v2, p0, Lc9/e;->b:J

    goto :goto_44

    :cond_39
    new-instance v1, Lc9/e;

    invoke-direct {v1, p3, v2, v3}, Lc9/e;-><init>(Ljava/lang/String;J)V

    iget-object p0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_44
    :try_start_44
    const-string p3, "cache"

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_54} :catch_e8

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "OUID_STATUS"

    const-string v9, "OUID"

    const-string v10, "DUID"

    const-string v11, "AUID"

    sparse-switch v1, :sswitch_data_10c

    goto :goto_94

    :sswitch_65
    :try_start_65
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    move p3, v2

    goto :goto_94

    :sswitch_6d
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    move p3, v3

    goto :goto_94

    :sswitch_75
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    move p3, v7

    goto :goto_94

    :sswitch_7d
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    move p3, v5

    goto :goto_94

    :sswitch_85
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    move p3, v6

    goto :goto_94

    :sswitch_8d
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_65 .. :try_end_91} :catch_e8

    if-eqz p2, :cond_94

    const/4 p3, 0x0

    :cond_94
    :goto_94
    if-eqz p3, :cond_dd

    if-eq p3, v7, :cond_d5

    if-eq p3, v6, :cond_c8

    if-eq p3, v5, :cond_bb

    if-eq p3, v3, :cond_ae

    if-eq p3, v2, :cond_a1

    goto :goto_e4

    :cond_a1
    const-string p2, "OUID_STATUS_TIME"

    :try_start_a3
    iget-object p3, p0, Lc9/e;->a:Ljava/lang/String;

    invoke-interface {p1, v8, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lc9/e;->b:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_ad
    .catch Ljava/lang/IllegalStateException; {:try_start_a3 .. :try_end_ad} :catch_e8

    goto :goto_e4

    :cond_ae
    const-string p2, "OUID_TIME"

    :try_start_b0
    iget-object p3, p0, Lc9/e;->a:Ljava/lang/String;

    invoke-interface {p1, v9, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lc9/e;->b:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_ba
    .catch Ljava/lang/IllegalStateException; {:try_start_b0 .. :try_end_ba} :catch_e8

    goto :goto_e4

    :cond_bb
    const-string p2, "DUID_TIME"

    :try_start_bd
    iget-object p3, p0, Lc9/e;->a:Ljava/lang/String;

    invoke-interface {p1, v10, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lc9/e;->b:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_bd .. :try_end_c7} :catch_e8

    goto :goto_e4

    :cond_c8
    const-string p2, "AUID_TIME"

    :try_start_ca
    iget-object p3, p0, Lc9/e;->a:Ljava/lang/String;

    invoke-interface {p1, v11, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lc9/e;->b:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_e4

    :cond_d5
    const-string p2, "GUID_TIME"

    const-string p3, "GUID_IV"

    invoke-static {p1, p0, v0, p2, p3}, Lc9/a;->c(Landroid/content/SharedPreferences$Editor;Lc9/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    :cond_dd
    const-string p2, "APID_TIME"

    const-string p3, "APID_IV"

    invoke-static {p1, p0, v4, p2, p3}, Lc9/a;->c(Landroid/content/SharedPreferences$Editor;Lc9/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e7
    .catch Ljava/lang/IllegalStateException; {:try_start_ca .. :try_end_e7} :catch_e8

    goto :goto_10a

    :catch_e8
    move-exception p0

    const-string p1, "1019:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_101

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_105

    :cond_101
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    :goto_105
    const-string p1, "IDHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    :goto_10a
    return-void

    nop

    :sswitch_data_10c
    .sparse-switch
        0x1ec18a -> :sswitch_8d
        0x1ed44f -> :sswitch_85
        0x20316c -> :sswitch_7d
        0x218e89 -> :sswitch_75
        0x253181 -> :sswitch_6d
        0x221a0c70 -> :sswitch_65
    .end sparse-switch
.end method

.method public s_a(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public s_a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public s_b(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_22

    :cond_12
    iget-object p0, p0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc9/e;

    invoke-virtual {p0, p1}, Lc9/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v1
.end method

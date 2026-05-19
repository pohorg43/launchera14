.class public final Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;
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

.method public static final a(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;Ljava/lang/String;)Lh4/j;
    .registers 5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SeedlingDatabase"

    const-string v0, "start parseCardConfig"

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_11

    const-string v0, "path is null"

    invoke-static {p0, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "assets/card-config.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lk3/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    const/4 v1, 0x0

    if-nez v0, :cond_67

    :try_start_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "host"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3a

    move-object v0, v1

    goto :goto_40

    :cond_3a
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_40
    if-nez p1, :cond_44

    move-object p1, v1

    goto :goto_4a

    :cond_44
    const-string v2, "componentName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4a
    const-string v2, "end parseCardConfig"

    invoke-static {p0, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_56

    move-object v1, v2

    goto :goto_71

    :catchall_56
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6c

    const-string v0, "parseCardConfig error"

    invoke-static {p0, v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    :cond_67
    const-string p1, "jsonString is null or empty"

    invoke-static {p0, p1}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    const-string p1, "error, parseCardConfig return null"

    invoke-static {p0, p1}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    return-object v1
.end method

.method public static final b(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;Ljava/lang/String;)I
    .registers 12

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SeedlingDatabase"

    const-string v0, "start parseCardConfig"

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_11

    const-string v0, "path is null"

    invoke-static {p0, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance p0, Ljava/io/File;

    const-string v0, "config.json"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lk3/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;

    invoke-static {p0, p1}, Lk3/g;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;

    sget-object p1, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;->Companion:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-nez p0, :cond_2f

    goto/16 :goto_d1

    :cond_2f
    invoke-virtual {p0}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;->getRuntime()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;

    move-result-object v1

    const-string v2, "car"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_3a

    goto :goto_7d

    :cond_3a
    invoke-virtual {v1}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;->getSupportHardware()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;

    move-result-object v1

    if-nez v1, :cond_41

    goto :goto_7d

    :cond_41
    invoke-virtual {v1}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;->getDevice()[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;

    move-result-object v1

    if-nez v1, :cond_48

    goto :goto_7d

    :cond_48
    array-length v5, v1

    move v6, v4

    :goto_4a
    if-ge v6, v5, :cond_7d

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;->getType()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_55

    goto :goto_5d

    :cond_55
    invoke-static {v8, v2, v0}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v0, :cond_5d

    move v8, v0

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v8, v4

    :goto_5e
    if-eqz v8, :cond_76

    invoke-virtual {v7}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;->getUseTemplate()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_67

    goto :goto_71

    :cond_67
    const-string v9, "desktop"

    invoke-static {v8, v9, v0}, Lk7/q;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-ne v8, v0, :cond_71

    move v8, v0

    goto :goto_72

    :cond_71
    :goto_71
    move v8, v4

    :goto_72
    if-eqz v8, :cond_76

    move v8, v0

    goto :goto_77

    :cond_76
    move v8, v4

    :goto_77
    if-eqz v8, :cond_7a

    goto :goto_7e

    :cond_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_7d
    :goto_7d
    move-object v7, v3

    :goto_7e
    if-eqz v7, :cond_83

    move p1, v4

    goto/16 :goto_d1

    :cond_83
    invoke-virtual {p0}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;->getRuntime()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;

    move-result-object p0

    if-nez p0, :cond_8a

    goto :goto_ce

    :cond_8a
    invoke-virtual {p0}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;->getSupportHardware()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;

    move-result-object p0

    if-nez p0, :cond_91

    goto :goto_ce

    :cond_91
    invoke-virtual {p0}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;->getDevice()[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;

    move-result-object p0

    if-nez p0, :cond_98

    goto :goto_ce

    :cond_98
    array-length v1, p0

    move v5, v4

    :goto_9a
    if-ge v5, v1, :cond_ce

    aget-object v6, p0, v5

    invoke-virtual {v6}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;->getType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a5

    goto :goto_ad

    :cond_a5
    invoke-static {v7, v2, v0}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v0, :cond_ad

    move v7, v0

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v7, v4

    :goto_ae
    if-eqz v7, :cond_c6

    invoke-virtual {v6}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;->getUseTemplate()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b7

    goto :goto_c1

    :cond_b7
    const-string v8, "notification"

    invoke-static {v7, v8, v0}, Lk7/q;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-ne v7, v0, :cond_c1

    move v7, v0

    goto :goto_c2

    :cond_c1
    :goto_c1
    move v7, v4

    :goto_c2
    if-eqz v7, :cond_c6

    move v7, v0

    goto :goto_c7

    :cond_c6
    move v7, v4

    :goto_c7
    if-eqz v7, :cond_cb

    move-object v3, v6

    goto :goto_ce

    :cond_cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    :cond_ce
    :goto_ce
    if-eqz v3, :cond_d1

    move p1, v0

    :cond_d1
    :goto_d1
    return p1
.end method

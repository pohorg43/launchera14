.class public Lio/branch/search/b5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/b5$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/b5$a;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/branch/search/b5;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/branch/search/b5;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0

    :cond_f
    invoke-virtual {p1}, Lio/branch/search/b5$a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Lio/branch/search/m;Lorg/json/JSONObject;)V
    .registers 13
    .param p0  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "shared_prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_78

    :cond_1e
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    :cond_25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2c
    const-string v5, "BranchSharedPrefs.loadSharedPrefsDiagnostics"

    if-ge v4, v3, :cond_6e

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BNC_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3f

    goto :goto_6b

    :cond_3f
    :try_start_3f
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_44} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_44} :catch_67

    const-string v8, "name"

    :try_start_46
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4d} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_4d} :catch_67

    const-string v8, "full_name"

    :try_start_4f
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_56} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_56} :catch_67

    const-string v8, "bytes"

    :try_start_58
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_66} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v6

    invoke-virtual {p0, v5, v6}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_6e
    :try_start_6e
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_78

    :catch_72
    move-exception p1

    const-string v0, "failed while inserting \"shared_prefs\" key"

    invoke-virtual {p0, v5, v0, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    return-void
.end method

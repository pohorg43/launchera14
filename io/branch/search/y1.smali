.class public final enum Lio/branch/search/y1;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/y1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/y1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/y1;

.field public static final enum b:Lio/branch/search/y1;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final synthetic f:[Lio/branch/search/y1;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lio/branch/search/y1;

    const-string v1, "BLUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/y1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    new-instance v1, Lio/branch/search/y1;

    const-string v3, "GREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/search/y1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/y1;->b:Lio/branch/search/y1;

    const/4 v3, 0x2

    new-array v5, v3, [Lio/branch/search/y1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    sput-object v5, Lio/branch/search/y1;->f:[Lio/branch/search/y1;

    const-string v5, "^"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    const-string v0, "BNCRAW_(%s|%s)_(.*)$"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/y1;->c:Ljava/util/regex/Pattern;

    const-string v0, "^BranchSdkRoomDatabase.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/y1;->d:Ljava/util/regex/Pattern;

    const-string v0, "^androidx.work.workdb.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/y1;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/y1$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lio/branch/search/y1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/branch/search/y1;->valueOf(Ljava/lang/String;)Lio/branch/search/y1;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lio/branch/search/y1$b;

    invoke-direct {v4, v1, v3, v2}, Lio/branch/search/y1$b;-><init>(Ljava/lang/String;Lio/branch/search/y1;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_38
    return-object v0
.end method

.method public static synthetic a()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lio/branch/search/y1;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Z)V
    .registers 11

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lio/branch/search/y1;->a(Landroid/content/Context;Z)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1a
    const-string v3, "BRANCH_BlueGreen.loadDatabaseDiagnostics"

    if-ge v2, v1, :cond_4f

    aget-object v4, p1, v2

    :try_start_20
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_25} :catch_48

    const-string v6, "name"

    :try_start_27
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2e} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2e} :catch_48

    const-string v6, "full_name"

    :try_start_30
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_37} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_37} :catch_48

    const-string v6, "bytes"

    :try_start_39
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v4

    invoke-static {v3, v4}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_4f
    :try_start_4f
    const-string p1, "databases"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p0

    const-string p1, "exception parsing \"databases\"."

    invoke-static {v3, p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5b
    return-void
.end method

.method public static a(Landroid/content/Context;Z)[Ljava/io/File;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "anything"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lio/branch/search/y1$a;

    invoke-direct {v0, p1}, Lio/branch/search/y1$a;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lio/branch/search/y1;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lio/branch/search/y1;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/y1;
    .registers 2

    const-class v0, Lio/branch/search/y1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/y1;

    return-object p0
.end method

.method public static values()[Lio/branch/search/y1;
    .registers 1

    sget-object v0, Lio/branch/search/y1;->f:[Lio/branch/search/y1;

    invoke-virtual {v0}, [Lio/branch/search/y1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/y1;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "BNCRAW_"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

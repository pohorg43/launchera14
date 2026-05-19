.class public Lio/branch/search/a2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/a2$k;,
        Lio/branch/search/a2$j;,
        Lio/branch/search/a2$i;,
        Lio/branch/search/a2$h;,
        Lio/branch/search/a2$d;,
        Lio/branch/search/a2$g;,
        Lio/branch/search/a2$l;,
        Lio/branch/search/a2$f;,
        Lio/branch/search/a2$e;,
        Lio/branch/search/a2$c;,
        Lio/branch/search/a2$b;
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/a2$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/branch/search/a2$c;

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/a2$c;-><init>(Ljava/lang/String;Lio/branch/search/a2$a;)V

    sput-object v0, Lio/branch/search/a2;->a:Lio/branch/search/a2$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lio/branch/search/a2;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_c

    :catch_20
    move-exception v2

    const-string v3, "BRANCH_BundlerLoader.jsonObjectToMap"

    invoke-static {v3, v2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_27
    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/m;Lorg/json/JSONObject;)Lio/branch/search/a2$c;
    .registers 5
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/branch/search/e;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lio/branch/search/BranchConfiguration;->a(Lorg/json/JSONObject;Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lio/branch/search/y1;->a(Lorg/json/JSONObject;Z)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lio/branch/search/t5;->p:Lio/branch/search/t5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lio/branch/search/f1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    instance-of p1, p0, Lio/branch/search/BranchSearchError;

    if-eqz p1, :cond_50

    check-cast p0, Lio/branch/search/BranchSearchError;

    invoke-virtual {p0}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    :goto_4d
    sget-object p0, Lio/branch/search/a2;->a:Lio/branch/search/a2$c;

    return-object p0

    :cond_50
    :try_start_50
    new-instance p1, Lio/branch/search/a2$c;

    invoke-direct {p1, p0}, Lio/branch/search/a2$c;-><init>(Lorg/json/JSONObject;)V

    iget-object p0, p1, Lio/branch/search/a2$c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5a} :catch_5b

    return-object p1

    :catch_5b
    move-exception p0

    const-string p1, "BRANCH_BundlerLoader.load"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method

.method public c(Lorg/json/JSONObject;)Lio/branch/search/a2$c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    instance-of p0, p1, Lio/branch/search/BranchSearchError;

    if-eqz p0, :cond_c

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    :goto_9
    sget-object p0, Lio/branch/search/a2;->a:Lio/branch/search/a2$c;

    return-object p0

    :cond_c
    :try_start_c
    new-instance p0, Lio/branch/search/a2$c;

    invoke-direct {p0, p1}, Lio/branch/search/a2$c;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string p1, "BRANCH_BundlerLoader.loadFromJson"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

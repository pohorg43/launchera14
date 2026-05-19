.class public final Lio/branch/search/i1$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/i1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJZLjava/lang/String;Lio/branch/search/p0;Lio/branch/search/m;)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "request_id"

    const-string v0, "source"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtualRequest"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "branchSearch"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sub-long/2addr p3, p1

    :try_start_17
    const-string p1, "round_trip_time"

    invoke-virtual {v1, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1c} :catch_31

    const-string p1, "channel"

    :try_start_1e
    iget-object p2, p7, Lio/branch/search/p0;->g:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p7, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_30} :catch_31

    goto :goto_42

    :catch_31
    move-exception p1

    iget-object p2, p7, Lio/branch/search/p0;->f:Ljava/lang/String;

    new-instance p3, Lh4/j;

    invoke-direct {p3, p0, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p0

    const-string p2, "LIRewrite.trackLocalCall"

    invoke-virtual {p8, p2, p1, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :goto_42
    const/4 p0, 0x0

    const-string p1, "local_api_calls"

    invoke-virtual {p8, p1, v1, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

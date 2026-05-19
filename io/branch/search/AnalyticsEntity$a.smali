.class public Lio/branch/search/AnalyticsEntity$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/AnalyticsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public final b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "encounter being completed again"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    return-void
.end method

.method public a()Z
    .registers 1

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "toJson called but isComplete = false"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    return-object v1

    :cond_d
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_2b

    const-string v2, "area"

    :try_start_14
    iget-object v3, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1a} :catch_2b

    const-string v2, "start_time"

    :try_start_1c
    iget-object v3, p0, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_22} :catch_2b

    const-string v2, "duration"

    :try_start_24
    iget-object p0, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    const-string v0, "Encounter.toJson"

    invoke-static {v0, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-object v1
.end method

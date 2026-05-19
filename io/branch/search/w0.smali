.class public final Lio/branch/search/w0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/w0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/w0$a;


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/w0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/w0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/w0;->Companion:Lio/branch/search/w0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/w0;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/w0;-><init>()V

    return-void
.end method

.method public static final a()Lio/branch/search/w0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/w0;->Companion:Lio/branch/search/w0$a;

    invoke-virtual {v0}, Lio/branch/search/w0$a;->a()Lio/branch/search/w0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchAnalytics;)V
    .registers 6

    const-string v0, "analytics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/branch/search/w0;->a:J

    sub-long/2addr v0, v2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_init_time"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

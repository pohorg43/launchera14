.class public final Lio/branch/search/q$a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/h0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/q$a$a;


# direct methods
.method public constructor <init>(Lio/branch/search/q$a$a;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/q$a$a$a;->a:Lio/branch/search/q$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/h0$e;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/h0$e;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/branch/search/h0$e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/branch/search/h0$e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    iget-object p0, p0, Lio/branch/search/q$a$a$a;->a:Lio/branch/search/q$a$a;

    iget-object p0, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/branch/search/h0$e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BranchCrashReport"

    invoke-virtual {v1, p0, v2, p1, v0}, Lio/branch/search/q$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

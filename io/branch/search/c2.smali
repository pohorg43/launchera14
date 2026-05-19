.class public final Lio/branch/search/c2;
.super Lio/branch/search/x1;
.source ""


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lio/branch/search/x1;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lio/branch/search/x1;)V
    .registers 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/branch/search/x1;-><init>()V

    iput-object p1, p0, Lio/branch/search/c2;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/branch/search/c2;->b:Lio/branch/search/x1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/c2;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    iget-object p0, p0, Lio/branch/search/c2;->b:Lio/branch/search/x1;

    invoke-virtual {p0, p1}, Lio/branch/search/x1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    const-string p0, "json.opt(name)?.toString() ?: fallback.bind(name)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p0

    const-string p1, "JoinBinding"

    const-string v0, "Safety net.... for now."

    invoke-static {p1, v0, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_2a
    return-object v0
.end method

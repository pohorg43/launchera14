.class public final Lio/branch/search/q$a$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q$a;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$d;Lio/branch/search/m;Lio/branch/search/e5;Lio/branch/search/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.KAnalyticsUtil$Companion$addDiagnostics$1"
    f = "KAnalyticsUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/m;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lio/branch/search/h0;

.field public final synthetic e:Lio/branch/search/e5;

.field public final synthetic f:Lio/branch/search/BranchAnalytics$d;


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lorg/json/JSONObject;Lio/branch/search/h0;Lio/branch/search/e5;Lio/branch/search/BranchAnalytics$d;Ll4/d;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/branch/search/q$a$a;->d:Lio/branch/search/h0;

    iput-object p4, p0, Lio/branch/search/q$a$a;->e:Lio/branch/search/e5;

    iput-object p5, p0, Lio/branch/search/q$a$a;->f:Lio/branch/search/BranchAnalytics$d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/q$a$a;

    iget-object v1, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iget-object v2, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/branch/search/q$a$a;->d:Lio/branch/search/h0;

    iget-object v4, p0, Lio/branch/search/q$a$a;->e:Lio/branch/search/e5;

    iget-object v5, p0, Lio/branch/search/q$a$a;->f:Lio/branch/search/BranchAnalytics$d;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/q$a$a;-><init>(Lio/branch/search/m;Lorg/json/JSONObject;Lio/branch/search/h0;Lio/branch/search/e5;Lio/branch/search/BranchAnalytics$d;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/q$a$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/q$a$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/q$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/q$a$a;->a:I

    if-nez v0, :cond_7d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_9
    sget-object p1, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    iget-object v0, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iget-object v1, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/q$a;->a(Lio/branch/search/m;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/q$a$a;->d:Lio/branch/search/h0;

    iget-object v0, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    const-string v1, "branchSearch.getRemoteConfiguration()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/branch/search/q$a$a$a;

    invoke-direct {v1, p0}, Lio/branch/search/q$a$a$a;-><init>(Lio/branch/search/q$a$a;)V

    invoke-virtual {p1, v0, v1}, Lio/branch/search/h0;->a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/h0$f;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_27} :catch_28

    goto :goto_37

    :catch_28
    sget-object v2, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    iget-object v3, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "KAnalyticsUtil.addDiagnostics"

    const-string v5, "failed to add device info/branch configuration to analytics payload."

    invoke-static/range {v2 .. v8}, Lio/branch/search/q$a;->a(Lio/branch/search/q$a;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :goto_37
    iget-object p1, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/branch/search/y1;->a(Lorg/json/JSONObject;Z)V

    iget-object p1, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iget-object v0, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lio/branch/search/b5;->a(Lio/branch/search/m;Lorg/json/JSONObject;)V

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lio/branch/search/y0;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iget-object p1, p1, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    iget-object v0, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lio/branch/search/k2;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/q$a$a;->b:Lio/branch/search/m;

    iget-object p1, p1, Lio/branch/search/m;->g:Lio/branch/search/q1;

    iget-object v0, p0, Lio/branch/search/q$a$a;->c:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/q$a$a;->e:Lio/branch/search/e5;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/q1;->a(Lorg/json/JSONObject;Lio/branch/search/e5;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    sget-object v3, Lr7/v;->a:Lm7/b2;

    new-instance v5, Lio/branch/search/q$a$a$b;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lio/branch/search/q$a$a$b;-><init>(Lio/branch/search/q$a$a;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

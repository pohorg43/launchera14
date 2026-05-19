.class public final Lio/branch/search/f1$a$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)Lorg/json/JSONObject;
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
        "Lorg/json/JSONObject;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$Companion$post$1"
    f = "KNetworkInterface.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/t5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lio/branch/search/m;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/f1$a$b;->b:Lio/branch/search/t5;

    iput-object p2, p0, Lio/branch/search/f1$a$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/f1$a$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/f1$a$b;->e:Lio/branch/search/m;

    iput-object p5, p0, Lio/branch/search/f1$a$b;->f:Ljava/lang/String;

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

    new-instance p1, Lio/branch/search/f1$a$b;

    iget-object v1, p0, Lio/branch/search/f1$a$b;->b:Lio/branch/search/t5;

    iget-object v2, p0, Lio/branch/search/f1$a$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/f1$a$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/f1$a$b;->e:Lio/branch/search/m;

    iget-object v5, p0, Lio/branch/search/f1$a$b;->f:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/f1$a$b;-><init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$a$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$a$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/f1$a$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_40

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/f1;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/f1$a$b;->b:Lio/branch/search/t5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/r1;

    if-nez p1, :cond_2d

    new-instance p1, Lio/branch/search/r1;

    iget-object v1, p0, Lio/branch/search/f1$a$b;->b:Lio/branch/search/t5;

    invoke-direct {p1, v1}, Lio/branch/search/r1;-><init>(Lio/branch/search/t5;)V

    :cond_2d
    move-object v3, p1

    iget-object v4, p0, Lio/branch/search/f1$a$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/f1$a$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/f1$a$b;->e:Lio/branch/search/m;

    iget-object v7, p0, Lio/branch/search/f1$a$b;->f:Ljava/lang/String;

    iput v2, p0, Lio/branch/search/f1$a$b;->a:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lio/branch/search/r1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_40

    return-object v0

    :cond_40
    :goto_40
    check-cast p1, Lio/branch/search/f5;

    invoke-static {p1}, Lio/branch/search/s1;->a(Lio/branch/search/f5;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.class public final Lio/branch/search/f1$a$c;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$Companion$postAsync$1"
    f = "KNetworkInterface.kt"
    l = {
        0x5a,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/t5;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lio/branch/search/m;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lio/branch/search/t1;


# direct methods
.method public constructor <init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Lio/branch/search/t1;Ll4/d;)V
    .registers 8

    iput-object p1, p0, Lio/branch/search/f1$a$c;->d:Lio/branch/search/t5;

    iput-object p2, p0, Lio/branch/search/f1$a$c;->e:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/f1$a$c;->f:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/f1$a$c;->g:Lio/branch/search/m;

    iput-object p5, p0, Lio/branch/search/f1$a$c;->h:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/f1$a$c;->i:Lio/branch/search/t1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance p1, Lio/branch/search/f1$a$c;

    iget-object v1, p0, Lio/branch/search/f1$a$c;->d:Lio/branch/search/t5;

    iget-object v2, p0, Lio/branch/search/f1$a$c;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/f1$a$c;->f:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/f1$a$c;->g:Lio/branch/search/m;

    iget-object v5, p0, Lio/branch/search/f1$a$c;->h:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/f1$a$c;->i:Lio/branch/search/t1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/branch/search/f1$a$c;-><init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Lio/branch/search/t1;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$a$c;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$a$c;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/f1$a$c;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_78

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object v1, p0, Lio/branch/search/f1$a$c;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/f1$a$c;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_59

    :cond_24
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/f1;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/f1$a$c;->d:Lio/branch/search/t5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/r1;

    if-nez p1, :cond_3c

    new-instance p1, Lio/branch/search/r1;

    iget-object v1, p0, Lio/branch/search/f1$a$c;->d:Lio/branch/search/t5;

    invoke-direct {p1, v1}, Lio/branch/search/r1;-><init>(Lio/branch/search/t5;)V

    :cond_3c
    move-object v4, p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, p0, Lio/branch/search/f1$a$c;->e:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/f1$a$c;->f:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/f1$a$c;->g:Lio/branch/search/m;

    iget-object v8, p0, Lio/branch/search/f1$a$c;->h:Ljava/lang/String;

    iput-object v1, p0, Lio/branch/search/f1$a$c;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/f1$a$c;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/f1$a$c;->c:I

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lio/branch/search/r1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_58

    return-object v0

    :cond_58
    move-object v3, v1

    :goto_59
    check-cast p1, Lio/branch/search/f5;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/f1$a$c;->i:Lio/branch/search/t1;

    if-eqz p1, :cond_78

    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    new-instance v1, Lio/branch/search/f1$a$c$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/f1$a$c$a;-><init>(Lio/branch/search/f1$a$c;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    iput-object v4, p0, Lio/branch/search/f1$a$c;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/f1$a$c;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/f1$a$c;->c:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_78

    return-object v0

    :cond_78
    :goto_78
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

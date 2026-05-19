.class public final La7/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/b;->q()Li5/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li5/x$a<",
        "Li5/u0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La7/b;


# direct methods
.method public constructor <init>(La7/b;)V
    .registers 2

    iput-object p1, p0, La7/b$a;->a:La7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly6/l0;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Li5/b;)Li5/x$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public build()Li5/x;
    .registers 1

    iget-object p0, p0, La7/b$a;->a:La7/b;

    return-object p0
.end method

.method public c(Ljava/util/List;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/e1;",
            ">;)",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Li5/a$a;Ljava/lang/Object;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;TV;)",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string p2, "userDataKey"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e()Li5/x$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public f(Lh6/f;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Li5/l;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Li5/x$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public i(Li5/b$a;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b$a;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public j(Li5/r0;)Li5/x$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/r0;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public k()Li5/x$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public l(Li5/d0;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/d0;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "modality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Z)Li5/x$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public n(Ljava/util/List;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;)",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public o(Ly6/t1;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/t1;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "substitution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public p(Lj5/h;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/h;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public q(Li5/t;)Li5/x$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/t;",
            ")",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public r()Li5/x$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.class public final Lz6/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz6/l;


# instance fields
.field public final c:Lz6/f;

.field public final d:Lz6/e;

.field public final e:Lk6/o;


# direct methods
.method public constructor <init>(Lz6/f;Lz6/e;I)V
    .registers 6

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_8

    sget-object p2, Lz6/e$a;->a:Lz6/e$a;

    goto :goto_9

    :cond_8
    move-object p2, p3

    :goto_9
    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/m;->c:Lz6/f;

    iput-object p2, p0, Lz6/m;->d:Lz6/e;

    new-instance p2, Lk6/o;

    sget-object v0, Lk6/o;->g:Lz6/d$a;

    sget-object v1, Lz6/e$a;->a:Lz6/e$a;

    invoke-direct {p2, v0, p1, v1, p3}, Lk6/o;-><init>(Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V

    const-string p1, "createWithTypeRefiner(kotlinTypeRefiner)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lz6/m;->e:Lk6/o;

    return-void
.end method


# virtual methods
.method public a()Lk6/o;
    .registers 1

    iget-object p0, p0, Lz6/m;->e:Lk6/o;

    return-object p0
.end method

.method public b(Ly6/l0;Ly6/l0;)Z
    .registers 11

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lz6/m;->c:Lz6/f;

    iget-object v5, p0, Lz6/m;->d:Lz6/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x6

    invoke-static/range {v2 .. v7}, Lz6/a;->b(ZZLz6/b;Lz6/e;Lz6/f;I)Ly6/i1;

    move-result-object p0

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    invoke-virtual {p2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p2

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/i;->a:Ly6/i;

    invoke-virtual {v0, p0, p1, p2}, Ly6/i;->e(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result p0

    return p0
.end method

.method public c()Lz6/f;
    .registers 1

    iget-object p0, p0, Lz6/m;->c:Lz6/f;

    return-object p0
.end method

.method public d(Ly6/l0;Ly6/l0;)Z
    .registers 16

    const-string v0, "subtype"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lz6/m;->c:Lz6/f;

    iget-object v4, p0, Lz6/m;->d:Lz6/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lz6/a;->b(ZZLz6/b;Lz6/e;Lz6/f;I)Ly6/i1;

    move-result-object v8

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v9

    invoke-virtual {p2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v10

    const-string p0, "<this>"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subType"

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {v10, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ly6/i;->a:Ly6/i;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static/range {v7 .. v12}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result p0

    return p0
.end method

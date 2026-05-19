.class public final Lc5/b0;
.super Lc5/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/b0$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKPackageImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KPackageImpl.kt\nkotlin/reflect/jvm/internal/KPackageImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lc5/p0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$b<",
            "Lc5/b0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/t;-><init>()V

    iput-object p1, p0, Lc5/b0;->c:Ljava/lang/Class;

    new-instance p1, Lc5/b0$b;

    invoke-direct {p1, p0}, Lc5/b0$b;-><init>(Lc5/b0;)V

    invoke-static {p1}, Lc5/p0;->b(Lkotlin/jvm/functions/Function0;)Lc5/p0$b;

    move-result-object p1

    const-string v0, "lazy { Data() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc5/b0;->d:Lc5/p0$b;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/k;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lc5/b0;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lc5/b0;->c:Ljava/lang/Class;

    check-cast p1, Lc5/b0;

    iget-object p1, p1, Lc5/b0;->c:Ljava/lang/Class;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public g(Lh6/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/b0;->r()Lr6/i;

    move-result-object p0

    sget-object v0, Lq5/d;->h:Lq5/d;

    invoke-interface {p0, p1, v0}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getJClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/b0;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public getMembers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/b0;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/b0$a;

    iget-object p0, p0, Lc5/b0$a;->g:Lc5/p0$a;

    sget-object v0, Lc5/b0$a;->h:[Lz4/n;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-members>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public h(I)Li5/o0;
    .registers 10

    iget-object v0, p0, Lc5/b0;->d:Lc5/p0$b;

    invoke-virtual {v0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/b0$a;

    iget-object v0, v0, Lc5/b0$a;->f:Lc5/p0$b;

    sget-object v1, Lc5/b0$a;->h:[Lz4/n;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/o;

    if-eqz v0, :cond_4c

    iget-object v1, v0, Lh4/o;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lg6/f;

    iget-object v1, v0, Lh4/o;->b:Ljava/lang/Object;

    check-cast v1, Lc6/l;

    iget-object v0, v0, Lh4/o;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg6/e;

    sget-object v0, Lf6/a;->n:Li6/h$f;

    const-string v2, "packageLocalVariable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Le6/e;->b(Li6/h$d;Li6/h$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lc6/n;

    if-eqz v3, :cond_4c

    iget-object v2, p0, Lc5/b0;->c:Ljava/lang/Class;

    new-instance v5, Le6/g;

    iget-object p0, v1, Lc6/l;->g:Lc6/t;

    const-string p1, "packageProto.typeTable"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p0}, Le6/g;-><init>(Lc6/t;)V

    sget-object v7, Lc5/b0$c;->a:Lc5/b0$c;

    invoke-static/range {v2 .. v7}, Lc5/w0;->f(Ljava/lang/Class;Li6/p;Le6/c;Le6/g;Le6/a;Lkotlin/jvm/functions/Function2;)Li5/a;

    move-result-object p0

    check-cast p0, Li5/o0;

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lc5/b0;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method

.method public j()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc5/b0;->d:Lc5/p0$b;

    invoke-virtual {v0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/b0$a;

    iget-object v0, v0, Lc5/b0$a;->e:Lc5/p0$b;

    sget-object v1, Lc5/b0$a;->h:[Lz4/n;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_19

    iget-object v0, p0, Lc5/b0;->c:Ljava/lang/Class;

    :cond_19
    return-object v0
.end method

.method public k(Lh6/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/b0;->r()Lr6/i;

    move-result-object p0

    sget-object v0, Lq5/d;->h:Lq5/d;

    invoke-interface {p0, p1, v0}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lr6/i;
    .registers 3

    iget-object p0, p0, Lc5/b0;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/b0$a;

    iget-object p0, p0, Lc5/b0$a;->d:Lc5/p0$a;

    sget-object v0, Lc5/b0$a;->h:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-scope>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr6/i;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "file class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lc5/b0;->c:Ljava/lang/Class;

    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

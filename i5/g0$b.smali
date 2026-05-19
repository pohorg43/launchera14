.class public final Li5/g0$b;
.super Ll5/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotFoundClasses.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotFoundClasses.kt\norg/jetbrains/kotlin/descriptors/NotFoundClasses$MockClassDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1549#2:101\n1620#2,3:102\n*S KotlinDebug\n*F\n+ 1 NotFoundClasses.kt\norg/jetbrains/kotlin/descriptors/NotFoundClasses$MockClassDescriptor\n*L\n55#1:101\n55#1:102,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ly6/q;


# direct methods
.method public constructor <init>(Lx6/m;Li5/l;Lh6/f;ZI)V
    .registers 13

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Li5/v0;->a:Li5/v0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ll5/j;-><init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V

    iput-boolean p4, p0, Li5/g0$b;->h:Z

    const/4 p2, 0x0

    invoke-static {p2, p5}, Ly4/h;->e(II)Ly4/d;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ly4/b;->a()Li4/f0;

    move-result-object p2

    :goto_2f
    move-object p4, p2

    check-cast p4, Ly4/c;

    iget-boolean p4, p4, Ly4/c;->c:Z

    if-eqz p4, :cond_60

    invoke-virtual {p2}, Li4/f0;->nextInt()I

    move-result v5

    sget p4, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    const/4 v2, 0x0

    sget-object v3, Ly6/e2;->c:Ly6/e2;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p5, 0x54

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ll5/n0;->I0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILx6/m;)Li5/a1;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_60
    iput-object p3, p0, Li5/g0$b;->i:Ljava/util/List;

    new-instance p2, Ly6/q;

    invoke-static {p0}, Li5/b1;->b(Li5/i;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object p4

    invoke-interface {p4}, Li5/e0;->k()Lf5/g;

    move-result-object p4

    invoke-virtual {p4}, Lf5/g;->f()Ly6/s0;

    move-result-object p4

    invoke-static {p4}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p1}, Ly6/q;-><init>(Li5/e;Ljava/util/List;Ljava/util/Collection;Lx6/m;)V

    iput-object p2, p0, Li5/g0$b;->j:Ly6/q;

    return-void
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public S()Li5/c1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 2

    const-string p0, "kotlinTypeRefiner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0
.end method

.method public f()Li5/f;
    .registers 1

    sget-object p0, Li5/f;->a:Li5/f;

    return-object p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic g0()Lr6/i;
    .registers 1

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 2

    sget-object p0, Li5/s;->e:Li5/t;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Li5/g0$b;->j:Ly6/q;

    return-object p0
.end method

.method public h0()Li5/e;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInner()Z
    .registers 1

    iget-boolean p0, p0, Li5/g0$b;->h:Z

    return p0
.end method

.method public isValue()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Li5/g0$b;->i:Ljava/util/List;

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    sget-object p0, Li5/d0;->a:Li5/d0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (not found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

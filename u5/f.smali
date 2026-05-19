.class public final Lu5/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/k0;


# instance fields
.field public final a:Lu5/g;

.field public final b:Lx6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/a<",
            "Lh6/c;",
            "Lv5/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu5/c;)V
    .registers 6

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu5/g;

    sget-object v1, Lu5/k$a;->a:Lu5/k$a;

    new-instance v2, Lh4/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lh4/b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1, v2}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    iput-object v0, p0, Lu5/f;->a:Lu5/g;

    iget-object p1, v0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    invoke-interface {p1}, Lx6/m;->a()Lx6/a;

    move-result-object p1

    iput-object p1, p0, Lu5/f;->b:Lx6/a;

    return-void
.end method


# virtual methods
.method public a(Lh6/c;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")",
            "Ljava/util/List<",
            "Lv5/j;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu5/f;->d(Lh6/c;)Lv5/j;

    move-result-object p0

    invoke-static {p0}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Lh6/c;)Z
    .registers 5

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu5/f;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->b:Lr5/s;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lv1/p;->c(Lr5/s;Lh6/c;ZILjava/lang/Object;)Ly5/u;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method public c(Lh6/c;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Ljava/util/Collection<",
            "Li5/h0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu5/f;->d(Lh6/c;)Lv5/j;

    move-result-object p0

    invoke-static {p2, p0}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lh6/c;)Lv5/j;
    .registers 6

    iget-object v0, p0, Lu5/f;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->b:Lr5/s;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lv1/p;->c(Lr5/s;Lh6/c;ZILjava/lang/Object;)Ly5/u;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v3

    :cond_10
    iget-object v1, p0, Lu5/f;->b:Lx6/a;

    new-instance v2, Lu5/f$a;

    invoke-direct {v2, p0, v0}, Lu5/f$a;-><init>(Lu5/f;Ly5/u;)V

    check-cast v1, Lx6/e$d;

    invoke-virtual {v1, p1, v2}, Lx6/e$d;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv5/j;

    return-object p0
.end method

.method public j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu5/f;->d(Lh6/c;)Lv5/j;

    move-result-object p0

    if-eqz p0, :cond_19

    iget-object p0, p0, Lv5/j;->l:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-nez p0, :cond_1e

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_1e
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "LazyJavaPackageFragmentProvider of module "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lu5/f;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

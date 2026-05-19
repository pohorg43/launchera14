.class public final Lr6/g;
.super Lr6/j;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInnerClassesScopeWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InnerClassesScopeWrapper.kt\norg/jetbrains/kotlin/resolve/scopes/InnerClassesScopeWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n800#2,11:56\n*S KotlinDebug\n*F\n+ 1 InnerClassesScopeWrapper.kt\norg/jetbrains/kotlin/resolve/scopes/InnerClassesScopeWrapper\n*L\n35#1:56,11\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lr6/i;


# direct methods
.method public constructor <init>(Lr6/i;)V
    .registers 3

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr6/j;-><init>()V

    iput-object p1, p0, Lr6/g;->b:Lr6/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-interface {p0}, Lr6/i;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-interface {p0}, Lr6/i;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 5

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    sget v0, Lr6/d;->l:I

    iget v1, p1, Lr6/d;->b:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    const/4 p1, 0x0

    goto :goto_1d

    :cond_15
    new-instance v1, Lr6/d;

    iget-object p1, p1, Lr6/d;->a:Ljava/util/List;

    invoke-direct {v1, v0, p1}, Lr6/d;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_1d
    if-nez p1, :cond_22

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_44

    :cond_22
    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-interface {p0, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Li5/i;

    if-eqz v0, :cond_31

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_43
    move-object p0, p1

    :goto_44
    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-interface {p0, p1, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_27

    instance-of p2, p0, Li5/e;

    if-eqz p2, :cond_1b

    move-object p2, p0

    check-cast p2, Li5/e;

    goto :goto_1c

    :cond_1b
    move-object p2, p1

    :goto_1c
    if-eqz p2, :cond_20

    move-object p1, p2

    goto :goto_27

    :cond_20
    instance-of p2, p0, Li5/z0;

    if-eqz p2, :cond_27

    move-object p1, p0

    check-cast p1, Li5/z0;

    :cond_27
    :goto_27
    return-object p1
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-interface {p0}, Lr6/i;->g()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Classes from "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lr6/g;->b:Lr6/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

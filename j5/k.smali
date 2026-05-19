.class public final Lj5/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/h;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Annotations.kt\norg/jetbrains/kotlin/descriptors/annotations/CompositeAnnotations\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,123:1\n1726#2,3:124\n1360#2:129\n1446#2,5:130\n1229#3,2:127\n*S KotlinDebug\n*F\n+ 1 Annotations.kt\norg/jetbrains/kotlin/descriptors/annotations/CompositeAnnotations\n*L\n105#1:124,3\n112#1:129\n112#1:130,5\n107#1:127,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lj5/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/k;->a:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lj5/h;)V
    .registers 3

    const-string v0, "delegates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public f(Lh6/c;)Lj5/c;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj5/k;->a:Ljava/util/List;

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    new-instance v0, Lj5/k$a;

    invoke-direct {v0, p1}, Lj5/k$a;-><init>(Lh6/c;)V

    invoke-static {p0, v0}, Lj7/p;->q(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj7/e;

    invoke-virtual {p0}, Lj7/e;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lj7/e$a;

    invoke-virtual {p0}, Lj7/e$a;->hasNext()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p0, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_2d
    check-cast p0, Lj5/c;

    return-object p0
.end method

.method public g(Lh6/c;)Z
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj5/k;->a:Ljava/util/List;

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    check-cast p0, Li4/v$a;

    invoke-virtual {p0}, Li4/v$a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/h;

    invoke-interface {v0, p1}, Lj5/h;->g(Lh6/c;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public isEmpty()Z
    .registers 3

    iget-object p0, p0, Lj5/k;->a:Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_25

    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/h;

    invoke-interface {v0}, Lj5/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v1, 0x0

    :cond_25
    :goto_25
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj5/k;->a:Ljava/util/List;

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    sget-object v0, Lj5/k$b;->a:Lj5/k$b;

    invoke-static {p0, v0}, Lj7/p;->o(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    check-cast p0, Lj7/f;

    new-instance v0, Lj7/f$a;

    invoke-direct {v0, p0}, Lj7/f$a;-><init>(Lj7/f;)V

    return-object v0
.end method

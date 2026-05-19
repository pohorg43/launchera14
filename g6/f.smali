.class public final Lg6/f;
.super Lg6/g;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmNameResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmNameResolver.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/JvmNameResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf6/a$e;[Ljava/lang/String;)V
    .registers 8

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_1e

    :cond_15
    const-string v1, "_init_$lambda$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :goto_1e
    iget-object p1, p1, Lf6/a$e;->b:Ljava/util/List;

    const-string v1, "types.recordList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf6/a$e$c;

    iget v3, v2, Lf6/a$e$c;->c:I

    const/4 v4, 0x0

    :goto_49
    if-ge v4, v3, :cond_3a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    invoke-direct {p0, p2, v0, v1}, Lg6/g;-><init>([Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

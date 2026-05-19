.class public final Li7/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ncollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 collections.kt\norg/jetbrains/kotlin/utils/CollectionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1208#2,2:96\n1238#2,4:98\n1#3:102\n*S KotlinDebug\n*F\n+ 1 collections.kt\norg/jetbrains/kotlin/utils/CollectionsKt\n*L\n22#1:96,2\n22#1:98,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public static final b(I)I
    .registers 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_4

    goto :goto_9

    :cond_4
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    :goto_9
    return v0
.end method

.method public static final c(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_1d

    :cond_12
    invoke-static {p0}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1d

    :cond_1b
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_1d
    return-object p0
.end method

.method public static final d(I)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Li7/a;->b(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

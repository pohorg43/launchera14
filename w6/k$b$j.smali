.class public final Lw6/k$b$j;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/k$b;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$NoReorderImplementation$variableNames$2\n+ 2 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$NoReorderImplementation\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,512:1\n502#2:513\n1620#3,3:514\n*S KotlinDebug\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$NoReorderImplementation$variableNames$2\n*L\n425#1:513\n425#1:514,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/k$b;

.field public final synthetic b:Lw6/k;


# direct methods
.method public constructor <init>(Lw6/k$b;Lw6/k;)V
    .registers 3

    iput-object p1, p0, Lw6/k$b$j;->a:Lw6/k$b;

    iput-object p2, p0, Lw6/k$b$j;->b:Lw6/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lw6/k$b$j;->a:Lw6/k$b;

    iget-object v1, v0, Lw6/k$b;->b:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v0, Lw6/k$b;->n:Lw6/k;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    iget-object v4, v0, Lw6/k;->b:Lu6/m;

    iget-object v4, v4, Lu6/m;->b:Le6/c;

    check-cast v3, Lc6/n;

    iget v3, v3, Lc6/n;->f:I

    invoke-static {v4, v3}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    iget-object p0, p0, Lw6/k$b$j;->b:Lw6/k;

    invoke-virtual {p0}, Lw6/k;->p()Ljava/util/Set;

    move-result-object p0

    invoke-static {v2, p0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

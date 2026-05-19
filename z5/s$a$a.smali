.class public final Lz5/s$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\npredefinedEnhancementInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1208#2,2:255\n1238#2,4:257\n1208#2,2:261\n1238#2,4:263\n1549#2:267\n1620#2,3:268\n1549#2:271\n1620#2,3:272\n*S KotlinDebug\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder\n*L\n226#1:255,2\n226#1:257,4\n237#1:261,2\n237#1:263,4\n245#1:267\n245#1:268,3\n246#1:271\n246#1:272,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Lz5/w;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "Ljava/lang/String;",
            "Lz5/w;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lz5/s$a;


# direct methods
.method public constructor <init>(Lz5/s$a;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "functionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lz5/s$a$a;->d:Lz5/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz5/s$a$a;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz5/s$a$a;->b:Ljava/util/List;

    new-instance p1, Lh4/j;

    const-string p2, "V"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lz5/s$a$a;->c:Lh4/j;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Lz5/g;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz5/s$a$a;->b:Ljava/util/List;

    array-length v0, p2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_16

    const/4 p2, 0x0

    goto :goto_56

    :cond_16
    invoke-static {p2}, Li4/k;->Q([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Li4/j0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_29

    move v0, v1

    :cond_29
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Li4/d0;

    invoke-virtual {p2}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    move-object v0, p2

    check-cast v0, Li4/e0;

    invoke-virtual {v0}, Li4/e0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v0}, Li4/e0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li4/c0;

    iget v2, v0, Li4/c0;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Li4/c0;->b:Ljava/lang/Object;

    check-cast v0, Lz5/g;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_51
    new-instance p2, Lz5/w;

    invoke-direct {p2, v1}, Lz5/w;-><init>(Ljava/util/Map;)V

    :goto_56
    new-instance v0, Lh4/j;

    invoke-direct {v0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Lz5/g;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Li4/k;->Q([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Li4/j0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1d

    move v0, v1

    :cond_1d
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Li4/d0;

    invoke-virtual {p2}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    move-object v0, p2

    check-cast v0, Li4/e0;

    invoke-virtual {v0}, Li4/e0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Li4/e0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li4/c0;

    iget v2, v0, Li4/c0;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Li4/c0;->b:Ljava/lang/Object;

    check-cast v0, Lz5/g;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_45
    new-instance p2, Lz5/w;

    invoke-direct {p2, v1}, Lz5/w;-><init>(Ljava/util/Map;)V

    new-instance v0, Lh4/j;

    invoke-direct {v0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lz5/s$a$a;->c:Lh4/j;

    return-void
.end method

.method public final c(Lp6/d;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lp6/d;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lz5/s$a$a;->c:Lh4/j;

    return-void
.end method

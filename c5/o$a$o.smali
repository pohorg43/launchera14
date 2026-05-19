.class public final Lc5/o$a$o;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lc5/o<",
        "+TT;>;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKClassImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$sealedSubclasses$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1603#2,9:334\n1855#2:343\n1856#2:346\n1612#2:347\n1#3:344\n1#3:345\n*S KotlinDebug\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$sealedSubclasses$2\n*L\n154#1:334,9\n154#1:343\n154#1:346\n154#1:347\n154#1:345\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$o;->a:Lc5/o$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lc5/o$a$o;->a:Lc5/o$a;

    invoke-virtual {p0}, Lc5/o$a;->a()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->v()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.sealedSubclasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/e;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v2, Lc5/o;

    invoke-direct {v2, v1}, Lc5/o;-><init>(Ljava/lang/Class;)V

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3c
    return-object v0
.end method

.class public final Lc5/o$a$l;
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
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKClassImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$nestedClasses$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n819#2:334\n847#2,2:335\n1603#2,9:337\n1855#2:346\n1856#2:349\n1612#2:350\n1#3:347\n1#3:348\n*S KotlinDebug\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$nestedClasses$2\n*L\n100#1:334\n100#1:335,2\n101#1:337,9\n101#1:346\n101#1:349\n101#1:350\n101#1:348\n*E\n"
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

    iput-object p1, p0, Lc5/o$a$l;->a:Lc5/o$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Lc5/o$a$l;->a:Lc5/o$a;

    invoke-virtual {p0}, Lc5/o$a;->a()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    const-string v0, "descriptor.unsubstitutedInnerClassesScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lr6/l$a;->a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Li5/l;

    invoke-static {v3}, Lk6/i;->r(Li5/l;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_35
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/l;

    instance-of v3, v2, Li5/e;

    if-eqz v3, :cond_51

    check-cast v2, Li5/e;

    goto :goto_52

    :cond_51
    move-object v2, v0

    :goto_52
    if-eqz v2, :cond_59

    invoke-static {v2}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_5a

    :cond_59
    move-object v2, v0

    :goto_5a
    if-eqz v2, :cond_62

    new-instance v3, Lc5/o;

    invoke-direct {v3, v2}, Lc5/o;-><init>(Ljava/lang/Class;)V

    goto :goto_63

    :cond_62
    move-object v3, v0

    :goto_63
    if-eqz v3, :cond_3e

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_69
    return-object p0
.end method

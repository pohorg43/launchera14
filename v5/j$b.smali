.class public final Lv5/j$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/j;-><init>(Lu5/g;Ly5/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Lp6/c;",
        "Lp6/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/j;


# direct methods
.method public constructor <init>(Lv5/j;)V
    .registers 2

    iput-object p1, p0, Lv5/j$b;->a:Lv5/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lv5/j$b;->a:Lv5/j;

    invoke-virtual {p0}, Lv5/j;->z0()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La6/t;

    invoke-static {v2}, Lp6/c;->d(Ljava/lang/String;)Lp6/c;

    move-result-object v2

    const-string v3, "byInternalName(partInternalName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, La6/t;->e()Lb6/a;

    move-result-object v1

    iget-object v3, v1, Lb6/a;->a:Lb6/a$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_59

    const/4 v4, 0x5

    if-eq v3, v4, :cond_45

    goto :goto_13

    :cond_45
    invoke-virtual {v1}, Lb6/a;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_13

    :cond_4c
    invoke-static {v1}, Lp6/c;->d(Ljava/lang/String;)Lp6/c;

    move-result-object v1

    const-string v3, "byInternalName(header.mu…: continue@kotlinClasses)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_59
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_5d
    return-object v0
.end method

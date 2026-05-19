.class public final Lx8/b;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "Ljava/util/HashMap<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final c:Lx8/b$a;


# instance fields
.field public final a:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx8/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx8/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx8/b;->c:Lx8/b$a;

    return-void
.end method

.method public constructor <init>(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 5

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lv3/r;-><init>()V

    invoke-virtual {p1, p2}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p2

    const-string v0, "moshi.adapter(keyType)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lx8/b;->a:Lv3/r;

    invoke-virtual {p1, p3}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p1

    const-string p2, "moshi.adapter(valueType)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lx8/b;->b:Lv3/r;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lv3/w;->b()V

    :goto_d
    invoke-virtual {p1}, Lv3/w;->e()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p1}, Lv3/w;->m()V

    iget-object v1, p0, Lx8/b;->a:Lv3/r;

    invoke-virtual {v1, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lx8/b;->b:Lv3/r;

    invoke-virtual {v2, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    goto :goto_d

    :cond_29
    new-instance p0, Lv3/t;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Map key \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has multiple values at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    invoke-virtual {p1}, Lv3/w;->d()V

    return-object v0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Ljava/util/HashMap;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv3/b0;->b()Lv3/b0;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "value!!.entries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Lv3/b0;->i()V

    iget-object v1, p0, Lx8/b;->a:Lv3/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    iget-object v1, p0, Lx8/b;->b:Lv3/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    goto :goto_15

    :cond_42
    new-instance p0, Lv3/t;

    invoke-virtual {p1}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Map key is null at "

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    invoke-virtual {p1}, Lv3/b0;->e()Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lx8/b;->a:Lv3/r;

    iget-object p0, p0, Lx8/b;->b:Lv3/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonAdapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

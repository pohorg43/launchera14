.class public final Lx3/a$b;
.super Li4/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/e<",
        "Lz4/m;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,328:1\n1559#2:329\n1590#2,4:330\n857#2,2:334\n*S KotlinDebug\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap\n*L\n172#1:329\n172#1:330,4\n175#1:334,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz4/m;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lz4/m;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "parameterKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li4/e;-><init>()V

    iput-object p1, p0, Lx3/a$b;->a:Ljava/util/List;

    iput-object p2, p0, Lx3/a$b;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lz4/m;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lz4/m;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a$b;->b:[Ljava/lang/Object;

    invoke-interface {p1}, Lz4/m;->getIndex()I

    move-result p1

    aget-object p0, p0, p1

    sget-object p1, Lx3/c;->a:Ljava/lang/Class;

    sget-object p1, Lx3/c;->b:Ljava/lang/Object;

    if-eq p0, p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lz4/m;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    check-cast p1, Lz4/m;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a$b;->b:[Ljava/lang/Object;

    invoke-interface {p1}, Lz4/m;->getIndex()I

    move-result p1

    aget-object p0, p0, p1

    sget-object p1, Lx3/c;->a:Ljava/lang/Class;

    sget-object p1, Lx3/c;->b:Ljava/lang/Object;

    if-eq p0, p1, :cond_1c

    move-object v1, p0

    :cond_1c
    return-object v1
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lz4/m;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Lz4/m;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lz4/m;

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lz4/m;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Lz4/m;

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lz4/m;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lz4/m;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

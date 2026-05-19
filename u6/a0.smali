.class public final Lu6/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/h;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProtoBasedClassDataFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoBasedClassDataFinder.kt\norg/jetbrains/kotlin/serialization/deserialization/ProtoBasedClassDataFinder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1194#2,2:44\n1222#2,4:46\n*S KotlinDebug\n*F\n+ 1 ProtoBasedClassDataFinder.kt\norg/jetbrains/kotlin/serialization/deserialization/ProtoBasedClassDataFinder\n*L\n32#1:44,2\n32#1:46,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Le6/c;

.field public final b:Le6/a;

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lh6/b;",
            "Li5/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lc6/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc6/m;Le6/c;Le6/a;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/m;",
            "Le6/c;",
            "Le6/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/b;",
            "+",
            "Li5/v0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu6/a0;->a:Le6/c;

    iput-object p3, p0, Lu6/a0;->b:Le6/a;

    iput-object p4, p0, Lu6/a0;->c:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lc6/m;->g:Ljava/util/List;

    const-string p2, "proto.class_List"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Li4/j0;->b(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_33

    move p2, p3

    :cond_33
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lc6/b;

    iget-object v0, p0, Lu6/a0;->a:Le6/c;

    iget p4, p4, Lc6/b;->e:I

    invoke-static {v0, p4}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_55
    iput-object p3, p0, Lu6/a0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Lu6/g;
    .registers 6

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/a0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/b;

    if-nez v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    new-instance v1, Lu6/g;

    iget-object v2, p0, Lu6/a0;->a:Le6/c;

    iget-object v3, p0, Lu6/a0;->b:Le6/a;

    iget-object p0, p0, Lu6/a0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/v0;

    invoke-direct {v1, v2, v0, v3, p0}, Lu6/g;-><init>(Le6/c;Lc6/b;Le6/a;Li5/v0;)V

    return-object v1
.end method

.class public final Lu6/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/h;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedClassDataFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedClassDataFinder.kt\norg/jetbrains/kotlin/serialization/deserialization/DeserializedClassDataFinder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Li5/i0;


# direct methods
.method public constructor <init>(Li5/i0;)V
    .registers 3

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/n;->a:Li5/i0;

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Lu6/g;
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/n;->a:Li5/i0;

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lv1/k;->e(Li5/i0;Lh6/c;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/h0;

    instance-of v1, v0, Lu6/o;

    if-eqz v1, :cond_1a

    check-cast v0, Lu6/o;

    invoke-virtual {v0}, Lu6/o;->z0()Lu6/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lu6/h;->a(Lh6/b;)Lu6/g;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

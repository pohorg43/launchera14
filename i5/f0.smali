.class public final Li5/f0;
.super Li5/c1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type::",
        "Lc7/k;",
        ">",
        "Li5/c1<",
        "TType;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiFieldValueClassRepresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiFieldValueClassRepresentation.kt\norg/jetbrains/kotlin/descriptors/MultiFieldValueClassRepresentation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh4/j<",
            "Lh6/f;",
            "TType;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh4/j<",
            "Lh6/f;",
            "+TType;>;>;)V"
        }
    .end annotation

    const-string v0, "underlyingPropertyNamesToTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li5/c1;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Li5/f0;->a:Ljava/util/List;

    invoke-static {p1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_21

    iput-object v0, p0, Li5/f0;->b:Ljava/util/Map;

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Some properties have the same names"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh4/j<",
            "Lh6/f;",
            "TType;>;>;"
        }
    .end annotation

    iget-object p0, p0, Li5/f0;->a:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Li5/f0;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

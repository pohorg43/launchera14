.class public final Lk7/o;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lh4/j<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1486:1\n1#2:1487\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lk7/o;->a:Ljava/util/List;

    iput-boolean p2, p0, Lk7/o;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lk7/o;->a:Ljava/util/List;

    iget-boolean p0, p0, Lk7/o;->b:Z

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_36

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    invoke-static {v6}, Li4/v;->W(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, p0, p2, v0, v1}, Lk7/q;->C(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_2b

    goto/16 :goto_c6

    :cond_2b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lh4/j;

    invoke-direct {p2, p1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_36
    new-instance v1, Ly4/d;

    if-gez p2, :cond_3b

    move p2, v0

    :cond_3b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v1, p2, v0}, Ly4/d;-><init>(II)V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_87

    iget v8, v1, Ly4/b;->b:I

    iget v9, v1, Ly4/b;->c:I

    if-lez v9, :cond_4e

    if-le p2, v8, :cond_52

    :cond_4e
    if-gez v9, :cond_c6

    if-gt v8, p2, :cond_c6

    :cond_52
    :goto_52
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_56
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lk7/m;->n(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_75

    :cond_74
    move-object v11, v7

    :goto_75
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_83

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lh4/j;

    invoke-direct {p2, p0, v11}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c7

    :cond_83
    if-eq p2, v8, :cond_c6

    add-int/2addr p2, v9

    goto :goto_52

    :cond_87
    iget v8, v1, Ly4/b;->b:I

    iget v9, v1, Ly4/b;->c:I

    if-lez v9, :cond_8f

    if-le p2, v8, :cond_93

    :cond_8f
    if-gez v9, :cond_c6

    if-gt v8, p2, :cond_c6

    :cond_93
    :goto_93
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_97
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move-object v2, p1

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lk7/q;->I(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_b4

    :cond_b3
    move-object v11, v7

    :goto_b4
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_c2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lh4/j;

    invoke-direct {p2, p0, v11}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c7

    :cond_c2
    if-eq p2, v8, :cond_c6

    add-int/2addr p2, v9

    goto :goto_93

    :cond_c6
    :goto_c6
    move-object p2, v7

    :goto_c7
    if-eqz p2, :cond_dc

    iget-object p0, p2, Lh4/j;->a:Ljava/lang/Object;

    iget-object p1, p2, Lh4/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v7, Lh4/j;

    invoke-direct {v7, p0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_dc
    return-object v7
.end method

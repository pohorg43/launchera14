.class public final Lx3/a;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/a$a;,
        Lx3/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lz4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/a$a<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/a$a<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lv3/w$a;


# direct methods
.method public constructor <init>(Lz4/h;Ljava/util/List;Ljava/util/List;Lv3/w$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/h<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lx3/a$a<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Lx3/a$a<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lv3/w$a;",
            ")V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allBindings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonIgnoredBindings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lx3/a;->a:Lz4/h;

    iput-object p2, p0, Lx3/a;->b:Ljava/util/List;

    iput-object p3, p0, Lx3/a;->c:Ljava/util/List;

    iput-object p4, p0, Lx3/a;->d:Lv3/w$a;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/w;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {v0}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v1, :cond_24

    sget-object v5, Lx3/c;->a:Ljava/lang/Class;

    sget-object v5, Lx3/c;->b:Ljava/lang/Object;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_24
    invoke-virtual {p1}, Lv3/w;->b()V

    :cond_27
    :goto_27
    invoke-virtual {p1}, Lv3/w;->e()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lx3/a;->d:Lv3/w$a;

    invoke-virtual {p1, v4}, Lv3/w;->o(Lv3/w$a;)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_40

    invoke-virtual {p1}, Lv3/w;->q()V

    invoke-virtual {p1}, Lv3/w;->r()V

    goto :goto_27

    :cond_40
    iget-object v8, p0, Lx3/a;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx3/a$a;

    iget v8, v4, Lx3/a$a;->e:I

    aget-object v9, v2, v8

    sget-object v10, Lx3/c;->a:Ljava/lang/Class;

    sget-object v10, Lx3/c;->b:Ljava/lang/Object;

    if-ne v9, v10, :cond_a4

    iget-object v9, v4, Lx3/a$a;->b:Lv3/r;

    invoke-virtual {v9, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v8

    aget-object v8, v2, v8

    if-nez v8, :cond_27

    iget-object v8, v4, Lx3/a$a;->c:Lz4/p;

    invoke-interface {v8}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object v8

    invoke-interface {v8}, Lz4/r;->isMarkedNullable()Z

    move-result v8

    if-nez v8, :cond_27

    iget-object p0, v4, Lx3/a$a;->c:Lz4/p;

    invoke-interface {p0}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v4, Lx3/a$a;->a:Ljava/lang/String;

    sget-object v1, Lw3/b;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v7

    const-string p0, "Non-null value \'%s\' was null at %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_99

    :cond_8b
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v0, v1, v7

    aput-object p1, v1, v6

    const-string p0, "Non-null value \'%s\' (JSON name \'%s\') was null at %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_99
    new-instance p1, Lv3/t;

    invoke-direct {p1, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    const-string p0, "unexpectedNull(\n        …         reader\n        )"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :cond_a4
    new-instance p0, Lv3/t;

    const-string v0, "Multiple values for \'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lx3/a$a;->c:Lz4/p;

    invoke-interface {v1}, Lz4/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c9
    invoke-virtual {p1}, Lv3/w;->d()V

    iget-object v4, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_d6

    move v4, v7

    goto :goto_d7

    :cond_d6
    move v4, v3

    :goto_d7
    move v8, v3

    :goto_d8
    if-ge v8, v0, :cond_162

    aget-object v9, v2, v8

    sget-object v10, Lx3/c;->a:Ljava/lang/Class;

    sget-object v10, Lx3/c;->b:Ljava/lang/Object;

    if-ne v9, v10, :cond_15e

    iget-object v9, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {v9}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz4/m;

    invoke-interface {v9}, Lz4/m;->c()Z

    move-result v9

    if-eqz v9, :cond_f6

    move v4, v3

    goto :goto_15e

    :cond_f6
    iget-object v9, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {v9}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz4/m;

    invoke-interface {v9}, Lz4/m;->getType()Lz4/r;

    move-result-object v9

    invoke-interface {v9}, Lz4/r;->isMarkedNullable()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_110

    aput-object v10, v2, v8

    goto :goto_15e

    :cond_110
    iget-object v0, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {v0}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m;

    invoke-interface {v0}, Lz4/m;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/a$a;

    if-eqz p0, :cond_12c

    iget-object v10, p0, Lx3/a$a;->a:Ljava/lang/String;

    :cond_12c
    sget-object p0, Lw3/b;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_145

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object p0, p1, v7

    const-string p0, "Required value \'%s\' missing at %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_153

    :cond_145
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object v10, p1, v7

    aput-object p0, p1, v6

    const-string p0, "Required value \'%s\' (JSON name \'%s\') missing at %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_153
    new-instance p1, Lv3/t;

    invoke-direct {p1, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    const-string p0, "missingProperty(\n       …       reader\n          )"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :cond_15e
    :goto_15e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d8

    :cond_162
    if-eqz v4, :cond_16f

    iget-object p1, p0, Lx3/a;->a:Lz4/h;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lz4/c;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_180

    :cond_16f
    iget-object p1, p0, Lx3/a;->a:Lz4/h;

    new-instance v1, Lx3/a$b;

    iget-object v3, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {v3}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lx3/a$b;-><init>(Ljava/util/List;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lz4/c;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    :goto_180
    iget-object v1, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_186
    if-ge v0, v1, :cond_1ad

    iget-object v3, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lx3/a$a;

    aget-object v4, v2, v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lx3/c;->a:Ljava/lang/Class;

    sget-object v5, Lx3/c;->b:Ljava/lang/Object;

    if-eq v4, v5, :cond_1aa

    iget-object v3, v3, Lx3/a$a;->c:Lz4/p;

    const-string v5, "null cannot be cast to non-null type kotlin.reflect.KMutableProperty1<K of com.squareup.moshi.kotlin.reflect.KotlinJsonAdapter.Binding, P of com.squareup.moshi.kotlin.reflect.KotlinJsonAdapter.Binding>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lz4/k;

    invoke-interface {v3, p1, v4}, Lz4/k;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_186

    :cond_1ad
    return-object p1
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lv3/b0;->b()Lv3/b0;

    iget-object p0, p0, Lx3/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3/a$a;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lx3/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lv3/b0;->f(Ljava/lang/String;)Lv3/b0;

    iget-object v1, v0, Lx3/a$a;->b:Lv3/r;

    iget-object v0, v0, Lx3/a$a;->c:Lz4/p;

    invoke-interface {v0, p2}, Lz4/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    goto :goto_13

    :cond_32
    invoke-virtual {p1}, Lv3/b0;->e()Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "KotlinJsonAdapter("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lx3/a;->a:Lz4/h;

    invoke-interface {p0}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

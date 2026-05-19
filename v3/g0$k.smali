.class public final Lv3/g0$k;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final d:Lv3/w$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lv3/g0$k;->a:Ljava/lang/Class;

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lv3/g0$k;->c:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lv3/g0$k;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_13
    iget-object v1, p0, Lv3/g0$k;->c:[Ljava/lang/Enum;

    array-length v2, v1

    if-ge v0, v2, :cond_37

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv3/g0$k;->b:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sget-object v4, Lw3/b;->a:Ljava/util/Set;

    const-class v4, Lv3/q;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lv3/q;

    invoke-static {v1, v3}, Lw3/b;->h(Ljava/lang/String;Lv3/q;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_37
    iget-object v0, p0, Lv3/g0$k;->b:[Ljava/lang/String;

    invoke-static {v0}, Lv3/w$a;->a([Ljava/lang/String;)Lv3/w$a;

    move-result-object v0

    iput-object v0, p0, Lv3/g0$k;->d:Lv3/w$a;
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing field in "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/g0$k;->d:Lv3/w$a;

    invoke-virtual {p1, v0}, Lv3/w;->p(Lv3/w$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object p0, p0, Lv3/g0$k;->c:[Ljava/lang/Enum;

    aget-object p0, p0, v0

    return-object p0

    :cond_e
    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lv3/w;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lv3/t;

    const-string v2, "Expected one of "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lv3/g0$k;->b:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at path "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Enum;

    iget-object p0, p0, Lv3/g0$k;->b:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lv3/b0;->n(Ljava/lang/String;)Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "JsonAdapter("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv3/g0$k;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

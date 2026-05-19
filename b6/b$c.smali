.class public Lb6/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;Lb6/b$a;)V
    .registers 3

    iput-object p1, p0, Lb6/b$c;->a:Lb6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_1b

    if-eq p0, v4, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "classLiteralValue"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_11
    const-string v5, "classId"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_16
    const-string v5, "enumEntryName"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_1b
    const-string v5, "enumClassId"

    aput-object v5, v1, v3

    :goto_1f
    const-string v3, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor"

    aput-object v3, v1, v2

    if-eq p0, v2, :cond_33

    if-eq p0, v4, :cond_33

    if-eq p0, v0, :cond_2e

    const-string p0, "visitClassLiteral"

    aput-object p0, v1, v4

    goto :goto_37

    :cond_2e
    const-string p0, "visitAnnotation"

    aput-object p0, v1, v4

    goto :goto_37

    :cond_33
    const-string p0, "visitEnum"

    aput-object p0, v1, v4

    :goto_37
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(Lh6/f;Lm6/f;)V
    .registers 3

    if-eqz p2, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lb6/b$c;->g(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lh6/f;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_8b

    iget-object p0, p0, Lb6/b$c;->a:Lb6/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lb6/a$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/a$a;

    if-nez p1, :cond_2d

    sget-object p1, Lb6/a$a;->c:Lb6/a$a;

    :cond_2d
    iput-object p1, p0, Lb6/b;->h:Lb6/a$a;

    goto :goto_8b

    :cond_30
    const-string v0, "mv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    instance-of p1, p2, [I

    if-eqz p1, :cond_8b

    iget-object p0, p0, Lb6/b$c;->a:Lb6/b;

    check-cast p2, [I

    iput-object p2, p0, Lb6/b;->a:[I

    goto :goto_8b

    :cond_43
    const-string v0, "xs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_8b

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p0, p0, Lb6/b$c;->a:Lb6/b;

    iput-object p2, p0, Lb6/b;->b:Ljava/lang/String;

    goto :goto_8b

    :cond_5c
    const-string v0, "xi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_8b

    iget-object p0, p0, Lb6/b$c;->a:Lb6/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lb6/b;->c:I

    goto :goto_8b

    :cond_73
    const-string v0, "pn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_8b

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p0, p0, Lb6/b$c;->a:Lb6/b;

    iput-object p2, p0, Lb6/b;->d:Ljava/lang/String;

    :cond_8b
    :goto_8b
    return-void
.end method

.method public d(Lh6/f;)La6/t$b;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    const-string v1, "d1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance p1, Lb6/c;

    invoke-direct {p1, p0}, Lb6/c;-><init>(Lb6/b$c;)V

    return-object p1

    :cond_17
    const-string v1, "d2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Lb6/d;

    invoke-direct {p1, p0}, Lb6/d;-><init>(Lb6/b$c;)V

    return-object p1

    :cond_25
    return-object v0
.end method

.method public e(Lh6/f;Lh6/b;Lh6/f;)V
    .registers 4

    const/4 p0, 0x0

    if-eqz p2, :cond_b

    if-eqz p3, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x2

    invoke-static {p1}, Lb6/b$c;->g(I)V

    throw p0

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Lb6/b$c;->g(I)V

    throw p0
.end method

.method public f(Lh6/f;Lh6/b;)La6/t$a;
    .registers 3

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    return-object p0

    :cond_4
    const/4 p1, 0x3

    invoke-static {p1}, Lb6/b$c;->g(I)V

    throw p0
.end method

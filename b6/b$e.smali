.class public Lb6/b$e;
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
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;Lb6/b$a;)V
    .registers 3

    iput-object p1, p0, Lb6/b$e;->a:Lb6/b;

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
    const-string v3, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor"

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

    invoke-static {p0}, Lb6/b$e;->g(I)V

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

    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    instance-of p1, p2, [I

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lb6/b$e;->a:Lb6/b;

    check-cast p2, [I

    iput-object p2, p0, Lb6/b;->a:[I

    goto :goto_2e

    :cond_1a
    const-string v0, "multifileClassName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lb6/b$e;->a:Lb6/b;

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2b

    check-cast p2, Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    iput-object p2, p0, Lb6/b;->b:Ljava/lang/String;

    :cond_2e
    :goto_2e
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
    const-string v1, "data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "filePartClassNames"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_29

    :cond_1a
    const-string v1, "strings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    new-instance p1, Lb6/g;

    invoke-direct {p1, p0}, Lb6/g;-><init>(Lb6/b$e;)V

    return-object p1

    :cond_28
    return-object v0

    :cond_29
    :goto_29
    new-instance p1, Lb6/f;

    invoke-direct {p1, p0}, Lb6/f;-><init>(Lb6/b$e;)V

    return-object p1
.end method

.method public e(Lh6/f;Lh6/b;Lh6/f;)V
    .registers 4

    const/4 p0, 0x0

    if-eqz p2, :cond_b

    if-eqz p3, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x2

    invoke-static {p1}, Lb6/b$e;->g(I)V

    throw p0

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Lb6/b$e;->g(I)V

    throw p0
.end method

.method public f(Lh6/f;Lh6/b;)La6/t$a;
    .registers 3

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    return-object p0

    :cond_4
    const/4 p1, 0x3

    invoke-static {p1}, Lb6/b$e;->g(I)V

    throw p0
.end method

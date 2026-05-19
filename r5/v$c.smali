.class public final Lr5/v$c;
.super Li5/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Li5/i1;)V
    .registers 2

    invoke-direct {p0, p1}, Li5/q;-><init>(Li5/i1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ls6/g;Li5/p;Li5/l;Z)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p2, :cond_f

    if-eqz p3, :cond_a

    invoke-static {p1, p2, p3}, Lr5/v;->b(Ls6/g;Li5/p;Li5/l;)Z

    move-result p0

    return p0

    :cond_a
    const/4 p1, 0x1

    invoke-static {p1}, Lr5/v$c;->e(I)V

    throw p0

    :cond_f
    const/4 p1, 0x0

    invoke-static {p1}, Lr5/v$c;->e(I)V

    throw p0
.end method

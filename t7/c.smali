.class public final Lt7/c;
.super Lt7/f;
.source ""


# static fields
.field public static final f:Lt7/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt7/c;

    invoke-direct {v0}, Lt7/c;-><init>()V

    sput-object v0, Lt7/c;->f:Lt7/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    sget v1, Lt7/l;->c:I

    sget v2, Lt7/l;->d:I

    sget-wide v3, Lt7/l;->e:J

    sget-object v5, Lt7/l;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lt7/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 3

    invoke-static {p1}, Lr7/n;->a(I)V

    sget v0, Lt7/l;->c:I

    if-lt p1, v0, :cond_8

    return-object p0

    :cond_8
    invoke-super {p0, p1}, Lm7/f0;->limitedParallelism(I)Lm7/f0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method

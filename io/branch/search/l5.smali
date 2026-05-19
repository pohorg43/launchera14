.class public final Lio/branch/search/l5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/y4;


# static fields
.field public static final a:Lio/branch/search/l5;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/l5;

    invoke-direct {v0}, Lio/branch/search/l5;-><init>()V

    sput-object v0, Lio/branch/search/l5;->a:Lio/branch/search/l5;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .registers 7

    array-length p0, p1

    if-ltz p0, :cond_1e

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v1, p2, 0x1

    rem-int v1, v0, v1

    if-eqz v1, :cond_b

    goto :goto_19

    :cond_b
    add-int v1, v0, p2

    array-length v2, p1

    if-lt v1, v2, :cond_11

    goto :goto_19

    :cond_11
    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    aput-byte v3, p1, v0

    aput-byte v2, p1, v1

    :goto_19
    if-eq v0, p0, :cond_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public a(Ljava/io/InputStream;)[B
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    if-eqz v0, :cond_e

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_14

    :cond_e
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :goto_14
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "buffer.toByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/branch/search/l5;->a([BI)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lio/branch/search/l5;->a([BI)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/branch/search/l5;->a([BI)V

    invoke-virtual {p0, p1, v2}, Lio/branch/search/l5;->a([BI)V

    return-object p1
.end method

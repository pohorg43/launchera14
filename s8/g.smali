.class public final Ls8/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls8/g;Ls8/a;)V
    .registers 7

    iget-object v0, p0, Ls8/g;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_17

    iget-object v3, p0, Ls8/g;->c:[I

    aput v2, v3, v1

    iget v3, p0, Ls8/g;->a:I

    iget-object v4, p0, Ls8/g;->b:[I

    invoke-static {v3, v4, v2, p1}, Ls8/e;->f(I[IILs8/a;)V

    add-int/lit16 v2, v2, 0x438

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public static b(Ls8/g;II)V
    .registers 3

    iput p1, p0, Ls8/g;->a:I

    mul-int/lit16 p1, p2, 0x438

    new-array p1, p1, [I

    iput-object p1, p0, Ls8/g;->b:[I

    new-array p1, p2, [I

    iput-object p1, p0, Ls8/g;->c:[I

    return-void
.end method

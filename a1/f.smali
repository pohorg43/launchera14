.class public final La1/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La1/a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [B

    array-length p0, p1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "ByteArrayPool"

    return-object p0
.end method

.method public newArray(I)Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [B

    return-object p0
.end method

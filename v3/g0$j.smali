.class public Lv3/g0$j;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/r<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lv3/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, -0x8000

    const/16 v0, 0x7fff

    const-string v1, "a short"

    invoke-static {p1, v1, p0, v0}, Lv3/g0;->a(Lv3/w;Ljava/lang/String;II)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lv3/b0;->l(J)Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "JsonAdapter(Short)"

    return-object p0
.end method

.class public Le1/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Le1/f;

    const-class v0, Ld1/g;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Ld1/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Ld1/n;

    move-result-object p1

    invoke-direct {p0, p1}, Le1/f;-><init>(Ld1/n;)V

    return-object p0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method

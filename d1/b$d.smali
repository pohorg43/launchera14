.class public Ld1/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "[B",
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
    .registers 3
    .param p1  # Ld1/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Ld1/b;

    new-instance v0, Ld1/b$d$a;

    invoke-direct {v0, p0}, Ld1/b$d$a;-><init>(Ld1/b$d;)V

    invoke-direct {p1, v0}, Ld1/b;-><init>(Ld1/b$b;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method

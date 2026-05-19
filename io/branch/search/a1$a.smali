.class public Lio/branch/search/a1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Lio/branch/search/z0;",
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
    .registers 2
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
            "Lio/branch/search/z0;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lio/branch/search/a1;

    invoke-direct {p0}, Lio/branch/search/a1;-><init>()V

    return-object p0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
